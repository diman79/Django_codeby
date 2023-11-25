import django.db
from django.db.models import ObjectDoesNotExist
from rest_framework.decorators import api_view
from rest_framework.parsers import JSONParser, MultiPartParser, FormParser
from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import action
from rest_framework.views import APIView, get_view_name, get_view_description
from rest_framework.renderers import JSONRenderer, BrowsableAPIRenderer, TemplateHTMLRenderer, AdminRenderer
from learning.models import Course, Lesson, Tracking, Review
from .serializers import *
from .analytics import AnalyticReport
from auth_app.models import User
from rest_framework.generics import ListAPIView, RetrieveAPIView, ListCreateAPIView, CreateAPIView, RetrieveDestroyAPIView
from rest_framework.pagination import PageNumberPagination
from rest_framework.filters import SearchFilter, OrderingFilter
from rest_framework.authentication import BaseAuthentication, TokenAuthentication, RemoteUserAuthentication, BasicAuthentication
from rest_framework.permissions import IsAdminUser, IsAuthenticated
from .permission import IsAuthor, IsStudent
from rest_framework.viewsets import ViewSet, ModelViewSet
from django.shortcuts import get_object_or_404, get_list_or_404


# Create your views here.


class AnalyticViewSet(ViewSet):
    def list(self, request):
        courses = Course.objects.all()
        reports = [AnalyticReport(course=course) for course in courses]
        analytic_serializer = AnalyticSerializer(reports, many=False, context={'request': request})
        return Response(data=analytic_serializer.data, status=status.HTTP_200_OK)

    @action(methods=('get', ), detail=False, url_path='(?P<course_id>[^/.]+)', name='Аналитика по курсу')
    def detail_analytic(self, request, course_id):
        course = get_object_or_404(Course, id=course_id)
        reports = [AnalyticReport(course=course)]
        analytic_serializer = AnalyticSerializer(reports, many=False, context={'request': request})
        return Response(data=analytic_serializer.data, status=status.HTTP_200_OK)

    # def get_view_name(self):
      #  return "Аналитика"


class TrackingStudentViewSet(ModelViewSet):
    http_method_names = ('get', 'post', 'options',)
    serializer_class = StudentTrackingSerializer
    permission_classes = (IsAuthenticated, IsStudent, )
    lookup_field = 'lesson__course'
    lookup_url_kwarg = 'course_id'

    def get_queryset(self):
        return Tracking.objects.filter(user=self.request.user)

    def get_object(self):
        tracking = self.get_queryset()
        filters = {self.lookup_field: self.kwargs[self.lookup_url_kwarg]}
        return get_list_or_404(tracking, **filters)

    def retrieve(self, request, *args, **kwargs):
        tracking = self.get_object()
        tracking_serializers = self.get_serializer(tracking, many=True)
        return Response(tracking_serializers.data)

    @action(methods=('post', ), detail=False, name='Запись на курс')
    def enroll(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.instance = self.perform_create(serializer)
        headers = self.get_success_headers(serializer.data)
        return Response(serializer.data, status=status.HTTP_201_CREATED, headers=headers)

    def perform_create(self, serializer):
        serializer.save(user=self.request.user, lesson=self.request.data['lesson'])

    # def get_view_name(self):
      #  return "Статистика прохождения курса / Ученик"


class TrackingAuthorViewSet(TrackingStudentViewSet):
    http_method_names = ('get', 'post', 'patch', 'options', )
    serializer_class = AuthorTrackingSerializer
    permission_classes = (IsAuthenticated, IsAuthor, )
    filter_backends = (SearchFilter, OrderingFilter, )
    search_fields = ('user__last_name', 'user__first_name', 'lesson__name', )

    def get_queryset(self):
        return Tracking.objects.filter(lesson__course__authors=self.request.user)

    def perform_create(self, serializer):
        data = self.request.data
        return serializer.save(user=User.objects.get(id=data['user']), lesson=data['lesson'])

    # def get_view_name(self):
      #  return "Статистика прохождения курса / Автор"

    @action(methods=('patch',), detail=False, name='Отметка о сдаче урока')
    def update_passed(self, request, *args, **kwargs):
        data = sorted(request.data, key=lambda x: x['id'])
        ids = list(map(lambda x: x['id'], data))
        instances = Tracking.objects.filter(id__in=ids).order_by('id')

        serializer = self.get_serializer(instances, data=data, many=True, partial=True)
        serializer.is_valid(raise_exception=True)
        self.perform_update(serializer)
        return Response(serializer.data)

    def perform_update(self, serializer):
        serializer.update(serializer.instance, serializer.validated)


class UserForAdminView(ListCreateAPIView):
    name = 'Список пользователей LMS Codeby'
    serializer_class = UserAdminSerializer
    pagination_class = PageNumberPagination
    authentication_classes = (BasicAuthentication, )
    permission_classes = (IsAdminUser, )
    renderer_classes = (AdminRenderer, )

    def get_queryset(self):
        return User.objects.all()


class CourseCreateView(CreateAPIView):
    name = 'Создать курс'
    serializer_class = CourseSerializer2
    permission_classes = (IsAuthor, )
    authentication_classes = (BasicAuthentication, )

    def perform_create(self, serializer):
        serializer.save(authors=(self.request.user, ))


class CourseDeleteView(RetrieveDestroyAPIView):
    name='Удалить курс'
    serializer_class = CourseSerializer2
    lookup_field = "id"
    lookup_url_kwarg = "course_id"
    authentication_classes = (BasicAuthentication, )
    permission_classes = (IsAuthor, )

    def get_queryset(self):
        return Course.objects.all()


class CourseListAPIView(ListAPIView):
    """
        Информация о всех курсах, размещенных на платформе LMS

    """

    name = 'Список курсов'
    serializer_class = CourseSerializer2
    authentication_classes = (TokenAuthentication, )
    pagination_class = PageNumberPagination
    filter_backends = (SearchFilter, OrderingFilter, )
    search_fields = ('title', 'description', 'authors__first_name', 'authors__last_name', 'start_date', )
    ordering_fields = ('start_date', 'price', )
    ordering = 'title'
    # queryset = Course.objects.all()

    def get_queryset(self):
        return Course.objects.all()


class CourseRetrieveAPIView(RetrieveAPIView):
    """
    Получение курса по id, переданному в URL

    """

    name = 'Курс'
    serializer_class = CourseSerializer2
    lookup_field = 'id'
    lookup_url_kwarg = 'course_id'

    def get_queryset(self):
        return Course.objects.all()


class CourseAPIView(APIView):
    """
    Информация о всех курсах, размещенных на платформе LMS

    """

    name = 'Список курсов'
    http_method_names = ['get', 'options',]
    parser_classes = (JSONParser, MultiPartParser, FormParser, )
    renderer_classes = (JSONRenderer, BrowsableAPIRenderer, AdminRenderer, )

    def get(self, request):
        courses_ = Course.objects.all()
        courses_serializer = CourseSerializer2(instance=courses_, many=True).data
        return Response(data=courses_serializer, status=status.HTTP_200_OK)

    # def get_view_name(self):
      #  return 'Список курсов'

    # def get_view_description(self, html=False):
       # return 'Информация о всех курсах, размещенных на платформе LMS'


@api_view(["GET", "POST"])
def courses(request):
    courses_ = Course.objects.all()
    courses_serializer = CourseSerializer2(instance=courses_, many=True).data
    return Response(data=courses_serializer, status=status.HTTP_200_OK)


@api_view(["GET"])
def courses_id(request, course_id):
    try:
        course = Course.objects.get(id=course_id)
        course_serializer = CourseSerializer2(instance=course, many=False).data
        return Response(data=course_serializer, status=status.HTTP_200_OK)
    except ObjectDoesNotExist as exception:
        return Response(data={'error': 'Запрашиваемый курс отсутствует в системе'}, status=status.HTTP_404_NOT_FOUND)


@api_view(["GET", "POST"])
def lessons(request):
    lessons_ = Lesson.objects.all()
    lessons_serializer = LessonSerializer2(instance=lessons_, many=True).data
    return Response(data=lessons_serializer, status=status.HTTP_200_OK)


@api_view(["GET"])
def lessons_id(request, lesson_id):
    try:
        lesson = Lesson.objects.get(id=lesson_id)
        lesson_serializer = LessonSerializer2(instance=lesson, many=False).data
        return Response(data=lesson_serializer, status=status.HTTP_200_OK)
    except ObjectDoesNotExist as exception:
        return Response(data={'error': 'Запрашиваемый урок отсутствует в системе'}, status=status.HTTP_404_NOT_FOUND)


@api_view(["GET", "POST"])
def trackings(request):
    trackings_ = Tracking.objects.all()
    trackings_serializer = TrackingSerializer2(instance=trackings_, many=True).data
    return Response(data=trackings_serializer, status=status.HTTP_200_OK)


@api_view(["GET"])
def trackings_id(request, tracking_id):
    try:
        tracking = Tracking.objects.get(id=tracking_id)
        tracking_serializer = TrackingSerializer2(instance=tracking, many=False).data
        return Response(data=tracking_serializer, status=status.HTTP_200_OK)
    except ObjectDoesNotExist as exception:
        return Response(data={'error': 'Запрашиваемый трек отсутствует в системе'}, status=status.HTTP_404_NOT_FOUND)


@api_view(["GET", "POST"])
def reviews(request):
    reviews_ = Review.objects.all()
    reviews_serializer = ReviewSerializer2(instance=reviews_, many=True).data
    return Response(data=reviews_serializer, status=status.HTTP_200_OK)


@api_view(["GET"])
def reviews_id(request, review_id):
    try:
        review = Review.objects.get(id=review_id)
        review_serializer = ReviewSerializer2(instance=review, many=False).data
        return Response(data=review_serializer, status=status.HTTP_200_OK)
    except ObjectDoesNotExist as exception:
        return Response(data={'error': 'Запрашиваемый отзыв отсутствует в системе'}, status=status.HTTP_404_NOT_FOUND)


@api_view(["GET"])
def analytics(request):
    courses = Course.objects.all()
    reports = [AnalyticReport(course=course) for course in courses]
    # analytic_serializer = AnalyticCourseSerializer(reports, many=True, context={'request': request})
    analytic_serializer = AnalyticSerializer(reports, many=False, context={'request': request})
    return Response(data=analytic_serializer.data, status=status.HTTP_200_OK)


@api_view(["GET", "POST"])
def users(request):
    if request.method == 'GET':
        users = User.objects.all()
        user_serializer = UserSerializer(instance=users, many=True)
        return Response(data=user_serializer.data, status=status.HTTP_200_OK)
    elif request.method == 'POST':
        print(request.FILES, request.data)
        user_serializer = UserSerializer(data=request.data)
        try:
            if user_serializer.is_valid(raise_exception=True):
                user_serializer.instance = user_serializer.save(user_serializer.validated_data)
                return Response(data=user_serializer.data, status=status.HTTP_201_CREATED)
        except serializers.ValidationError:
            return Response(data=user_serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        except django.db.IntegrityError:
            return Response(data={'email': 'Пользователь с таким email уже существует'},
                            status=status.HTTP_400_BAD_REQUEST)
        except Exception as exception:
            return Response (data={'error': str(exception)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)


