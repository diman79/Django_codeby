from django.urls import path, include
from .views import *
from rest_framework.authtoken.views import obtain_auth_token
from rest_framework.routers import SimpleRouter, DefaultRouter


router = DefaultRouter(trailing_slash=True)
router.register('analytics', AnalyticViewSet, basename='analytic')
router.register('trackings', TrackingStudentViewSet, basename='trackings')
router.register('trackings_for_authors', TrackingAuthorViewSet, basename='trackings_for_authors')

for url in router.urls:
    print(url)

urlpatterns = [
    path('courses/', CourseListAPIView.as_view(), name='courses'),
    path('courses/<int:course_id>', CourseRetrieveAPIView.as_view(), name='courses_id'),



    path('lessons/', lessons, name='lessons'),
    path('lessons/<int:lesson_id>', lessons_id, name='lessons_id'),

    # path('trackings/', TrackingStudentViewSet.as_view(actions={'get': 'list', 'post': 'create'}), name='trackings'),
    # path('trackings/<int:course_id>', TrackingStudentViewSet.as_view(actions={'get': 'retrieve'}), name='trackings_id'),

    # path('trackings_for_authors/', TrackingAuthorViewSet.as_view(actions={'get': 'list', 'post': 'create',
                                                                          # 'patch': 'partial_update'}), name='trackings'),

    # path('trackings_for_authors/<int:course_id>', TrackingAuthorViewSet.as_view(actions={'get': 'retrieve'}),
         #name='trackings_id'),

    path('reviews/', reviews, name='reviews'),
    path('reviews/<int:review_id>', reviews_id, name='reviews_id'),

    path('', include(router.urls)),
    # path('analytics/', AnalyticViewSet.as_view(actions={'get': 'list'}), name='analytics'),
    # path('analytics/<int:course_id>', AnalyticViewSet.as_view(actions={'get': 'retrieve'}), name='analytics_id'),

    path('users/', users, name='users'),


    path('authentication/', include('rest_framework.urls')),
    path('generate-token/', obtain_auth_token, name='generate-token'),
    path('users-for-admin/', UserForAdminView.as_view(), name='users-for-admin'),
    path('courses/create/', CourseCreateView.as_view(), name='courses_create'),
    path('courses/delete/<int:course_id>/', CourseDeleteView.as_view(), name='courses_delete'),
]
