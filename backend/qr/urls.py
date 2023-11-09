from rest_framework import routers

from qrCode.view import QrCodeViewSet
from django.conf.urls.static import static
from django.conf import settings

book_url = routers.SimpleRouter()
book_url.register(r'qrCode', QrCodeViewSet),

urlpatterns = [
              ] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns += book_url.urls
