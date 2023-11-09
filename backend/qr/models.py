from django.db import models
from dvadmin.utils.models import CoreModel, table_prefix


class QrCode(CoreModel):
    username = models.CharField(max_length=24, null=False, verbose_name='用户名称', help_text="用户名称")
    userRoot = models.CharField(max_length=100, null=True, verbose_name='查看权限', help_text="查看权限")
    text = models.CharField(max_length=100, null=False, verbose_name='二维码内容', help_text="二维码内容", default="二维码内容")
    user = models.CharField(max_length=24, null=False, verbose_name='用户账户', help_text="用户账户")
    path = models.CharField(max_length=24, null=False, verbose_name='文件名', help_text="文件名")

    class Meta:
        db_table = table_prefix + "code"
        verbose_name = '二维码数据表'
        verbose_name_plural = verbose_name
        ordering = ('-create_datetime',)
