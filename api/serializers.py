from rest_framework.serializers import ModelSerializer
from rest_framework import serializers
from learning.models import Course, Lesson, Tracking, Review
from auth_app.models import User


class UserSerializer(ModelSerializer):
    class Meta:
        model = User
        # fields = ('first_name', 'last_name', )
        fields = '__all__'

    def to_representation(self, instance):
        return f'{instance.get_full_name()}'


class CourseSerializer2(ModelSerializer):
    # authors = serializers.PrimaryKeyRelatedField(many=True, read_only=True)
    # authors = serializers.StringRelatedField(many=True)
    # authors = serializers.SlugRelatedField(slug_field='email', many=True, read_only=True)
    authors = UserSerializer(many=True)

    class Meta:
        model = Course
        fields = '__all__'


class LessonSerializer2(ModelSerializer):

    course = serializers.StringRelatedField(many=False)

    class Meta:
        model = Lesson
        fields = '__all__'


class TrackingSerializer2(ModelSerializer):
    lesson = serializers.StringRelatedField(many=False)

    class Meta:
        model = Tracking
        fields = '__all__'


class ReviewSerializer2(ModelSerializer):

    course = serializers.StringRelatedField(many=False)

    class Meta:
        model = Review
        fields = '__all__'



