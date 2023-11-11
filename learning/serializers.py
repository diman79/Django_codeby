from django.core.serializers.json import Serializer


class CourseSerializer(Serializer):
    def get_dump_object(self, obj):
        data = {'fields': self._current}
        return data


class LessonSerializer(Serializer):
    pass


class TrackingSerializer(Serializer):
    pass


class ReviewSerializer(Serializer):
    pass
