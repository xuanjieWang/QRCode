# Create your views here.

from qr.models import qr
from dvadmin.utils.serializers import CustomModelSerializer
from dvadmin.utils.viewset import CustomModelViewSet
from rest_framework.views import APIView
import os
from application import settings
from datetime import datetime
from django.http import HttpResponse
import qrcode


class qrSerializer(CustomModelSerializer):
    class Meta:
        model = qr
        fields = "__all__"
        read_only_fields = ["id"]


class qrCreateUpdateSerializer(CustomModelSerializer):
    class Meta:
        model = qr
        fields = '__all__'


class qrViewSet(CustomModelViewSet):
    queryset = qr.objects.all()
    serializer_class = qrSerializer
    extra_filter_backends = []
    permission_classes = []
    search_fields = ['label']

    def get_queryset(self):
        queryset = super().get_queryset()

        # 获取查询参数
        username = self.request.query_params.get('username')

        print(username)
        if username:
            # 根据查询参数对 queryset 进行过滤
            queryset = queryset.filter(username=username)

        return queryset


# views.py

class qrUpload(APIView):
    serializer_class = qrSerializer
    authentication_classes = []
    permission_classes = []

    def post(self, request):
        # 时间戳生成文件名
        now = datetime.now()
        file_name = now.strftime("%Y%m%d%H%M%S%f") + '.png'

        # 获取表单数据
        form_data = request.POST.dict()
        # 获取上传的文件数据
        username = form_data.get('username')
        # 获取用户名
        name = form_data.get('name')
        # 输入的二维码内容
        text = form_data.get('text')
        # 获取用户的权限 root/user
        user_root = form_data.get('root')
        # qrcode根据文本生成二维码
        img = qrcode.make(text)
        img.save("./media" + file_name)
        # 信息入库
        code = qr(username=username, user=name, text=text, path=file_name, userRoot=user_root)
        code.save()
        return HttpResponse('上传成功')

        # # 设置文件保存路径
        # file_path = os.path.join(settings.MEDIA_ROOT, file_name)
        #
        # # 将Blob数据保存到本地文件
        # with open(file_path, 'wb') as f:
        #     for chunk in file.chunks():
        #         f.write(chunk)
