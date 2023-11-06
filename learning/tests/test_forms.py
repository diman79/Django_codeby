from django.test import TestCase, Client
from learning.models import Course, Lesson, Tracking
from django.core.exceptions import ValidationError
from learning.forms import LessonForm


class LearningModelsTestCase(TestCase):
    fixtures = ['test_data.json']

    def setUp(self) -> None:
        self.data = {
        'course': Course.objects.get(title='Тестировщик').id,
        'name': 'Java для тестировщиков',
        'preview': 'Тестировщик это одна из востребованных профессий'
                   'Тестировщик это одна из востребованных профессий'
                   'Тестировщик это одна из востребованных профессий'
                   'Тестировщик это одна из востребованных профессий'
                   'Тестировщик это одна из востребованных профессий'
                   'Тестировщик это одна из востребованных профессий'
                   'Тестировщик это одна из востребованных профессий'
                   'Тестировщик это одна из востребованных профессий'
                   'Тестировщик это одна из востребованных профессий'
                   'Тестировщик это одна из востребованных профессий'
                   'Тестировщик это одна из востребованных профессий'
                   'Тестировщик это одна из востребованных профессий'
                   'Тестировщик это одна из востребованных профессий'
                   'Тестировщик это одна из востребованных профессий'
                   'Тестировщик это одна из востребованных профессий'
                   'Тестировщик это одна из востребованных профессий',
        }

    def test_Lesson_form_preview_length_error(self):
        form = LessonForm(data=self.data)
        self.assertFalse(form.is_valid())
        self.assertRaisesMessage(ValidationError, 'Слишком длинное описание. Сократите до 200 символов')
