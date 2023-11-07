from django.test import TestCase, Client
from learning.models import Course, Lesson, Tracking
from LMS5_Project import settings


class LearningModelsTestCase(TestCase):
    fixtures = ['test_data.json']

    def test_course_to_str(self):
        course = Course.objects.first()
        self.assertEqual(str(course), f'{course.title}: Старт {course.start_date}')

    def test_lesson_to_str(self):
        lesson = Lesson.objects.first()
        self.assertEqual(str(lesson), f'{lesson.course.title}: Урок {lesson.name}')
