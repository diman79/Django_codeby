from django.urls import path, include
from .views import *
from rest_framework.authtoken.views import obtain_auth_token

urlpatterns = [
    path('courses/', CourseListAPIView.as_view(), name='courses'),
    path('courses/<int:course_id>', CourseRetrieveAPIView.as_view(), name='courses_id'),

    path('lessons/', lessons, name='lessons'),
    path('lessons/<int:lesson_id>', lessons_id, name='lessons_id'),

    path('trackings/', trackings, name='trackings'),
    path('trackings/<int:tracking_id>', trackings_id, name='trackings_id'),

    path('reviews/', reviews, name='reviews'),
    path('reviews/<int:review_id>', reviews_id, name='reviews_id'),

    path('analytics/', analytics, name='analytics'),

    path('users/', users, name='users'),


    path('authentication/', include('rest_framework.urls')),
    path('generate-token/', obtain_auth_token, name='generate-token'),
    path('users-for-admin/', UserForAdminView.as_view(), name='users-for-admin'),
    path('courses/create/', CourseCreateView.as_view(), name='courses_create'),
]
