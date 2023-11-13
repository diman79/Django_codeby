from django.urls import path
from .views import *


urlpatterns = [
    path('courses/', courses, name='courses'),
    path('courses/<int:course_id>', courses_id, name='courses_id'),

    path('lessons/', lessons, name='lessons'),
    path('lessons/<int:lesson_id>', lessons_id, name='lessons_id'),

    path('trackings/', trackings, name='trackings'),
    path('trackings/<int:tracking_id>', trackings_id, name='trackings_id'),

    path('reviews/', reviews, name='reviews'),
    path('reviews/<int:review_id>', reviews_id, name='reviews_id'),

    path('analytics/', analytics, name='analytics'),

    path('users/', users, name='users'),
]
