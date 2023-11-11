from django.db.models import ObjectDoesNotExist
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from learning.models import Course, Lesson, Tracking, Review
from .serializers import CourseSerializer2, LessonSerializer2, TrackingSerializer2, ReviewSerializer2

# Create your views here.


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
