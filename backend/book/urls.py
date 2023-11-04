from rest_framework import routers

from book.view import BookViewSet
from django.conf.urls.static import static
from django.conf import settings



book_url = routers.SimpleRouter()
book_url.register(r'book', BookViewSet),

urlpatterns = [
]+static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)
urlpatterns += book_url.urls