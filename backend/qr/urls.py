from rest_framework import routers

from qr.view import qrViewSet
from django.conf.urls.static import static
from django.conf import settings

book_url = routers.SimpleRouter()
book_url.register(r'qr', qrViewSet),

urlpatterns = [
              ] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns += book_url.urls
