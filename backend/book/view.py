
# Create your views here.

from book.models import Book
from dvadmin.utils.serializers import CustomModelSerializer
from dvadmin.utils.viewset import CustomModelViewSet
from rest_framework.views import APIView
import os
from application import settings
from datetime import datetime
from django.http import HttpResponse



class BookSerializer(CustomModelSerializer):
    """
    书籍-序列化器
    """

    class Meta:
        model = Book
        fields = "__all__"
        read_only_fields = ["id"]


class BookCreateUpdateSerializer(CustomModelSerializer):
    """
    书籍管理 创建/更新时的列化器
    """

    class Meta:
        model = Book
        fields = '__all__'
class BookViewSet(CustomModelViewSet):
    """
    书籍管理接口
    list:查询
    create:新增
    update:修改
    retrieve:单例
    destroy:删除
    """
    queryset = Book.objects.all()
    serializer_class = BookSerializer
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

class bookUpload (APIView):
    serializer_class = BookSerializer
    authentication_classes = []
    permission_classes = []

    def post(self, request):
            now = datetime.now()

            # 获取表单数据
            form_data = request.POST.dict()
            # 获取上传的文件数据
            file = request.FILES['qrcode_file']
            username = form_data.get('username')
            name = form_data.get('name')
            text = form_data.get('text')
            userRoot = form_data.get('root')
            file_name = now.strftime("%Y%m%d%H%M%S%f")+'.png'
            print("文件上传的数据-------------------: ",username,name,text,file_name)


            # 获取文件名
            # 设置文件保存路径
            file_path = os.path.join(settings.MEDIA_ROOT, file_name)
            book = Book(username=username,user=name,text=text,path=file_name,userRoot=userRoot)
            book.save()

            # 将Blob数据保存到本地文件
            with open(file_path, 'wb') as f:
                for chunk in file.chunks():
                    f.write(chunk)

            return HttpResponse('上传成功')
