from django.conf import settings as gSettings  # 全局设置

# 工具栏样式，可以添加任意多的模式
toolbars_settings = {
    "besttome": [
        ['source', 'undo', 'redo', 'bold', 'italic', 'underline', 'forecolor', 'backcolor', 'superscript', 'subscript',
         "justifyleft", "justifycenter", "justifyright", "insertorderedlist", "insertunorderedlist", "blockquote",
         'formatmatch', "removeformat", 'autotypeset', 'inserttable', "pasteplain", "wordimage", "searchreplace", "map",
         "preview", "fullscreen"],
        ['insertcode', 'paragraph', "fontfamily", "fontsize", 'link', 'unlink', 'insertimage', 'insertvideo',
         'attachment', 'emotion', "date", "time"]],
    "mini": [['source', '|', 'undo', 'redo', '|', 'bold', 'italic', 'underline', 'formatmatch', 'autotypeset', '|',
              'forecolor', 'backcolor', '|', 'link', 'unlink', '|', 'simpleupload', 'attachment']],
    "normal": [['source', '|', 'undo', 'redo', '|', 'bold', 'italic', 'underline', 'removeformat', 'formatmatch',
                'autotypeset', '|', 'forecolor', 'backcolor', '|', 'link', 'unlink', '|', 'simpleupload', 'emotion',
                'attachment', '|', 'inserttable', 'deletetable', 'insertparagraphbeforetable', 'insertrow', 'deleterow',
                'insertcol', 'deletecol', 'mergecells', 'mergeright', 'mergedown', 'splittocells', 'splittorows',
                'splittocols']]
}

# 默认的Ueditor设置，请参见ueditor.config.js
ueditor_settings = {
    "toolbars": toolbars_settings["normal"],
    "autoFloatEnabled": False,
    "defaultPathFormat": "%(basename)s_%(datetime)s_%(rnd)s.%(extname)s"  # 默认保存上传文件的命名方式
}
# 请参阅php文件夹里面的config.json进行配置
ueditor_upload_settings = {
    # 上传图片配置项
    "imageActionName": "uploadimage",  # 执行上传图片的action名称
    "imageMaxSize": 10485760,  # 上传大小限制，单位B,10M
    "imageFieldName": "upfile",  # * 提交的图片表单名称 */
    "imagePathFormat": "",
    "imageInsertAlign": "none",
    "imageAllowFiles": [".png", ".jpg", ".jpeg", ".gif", ".bmp"],  # 上传图片格式显示

    # 涂鸦图片上传配置项 */
    "scrawlActionName": "uploadscrawl",  # 执行上传涂鸦的action名称 */
    "scrawlFieldName": "upfile",  # 提交的图片表单名称 */
    "scrawlMaxSize": 10485760,  # 上传大小限制，单位B  10M
    "scrawlPathFormat": "",
    "scrawlInsertAlign": "none",

    # 截图工具上传 */
    "snapscreenActionName": "uploadimage",  # 执行上传截图的action名称 */
    "snapscreenPathFormat": "",
    "snapscreenInsertAlign": "none", # /* 插入的图片浮动方式 */

    # 抓取远程图片配置 */
    "catcherLocalDomain": ["127.0.0.1", "localhost", "img.baidu.com"],
    "catcherPathFormat": "",
    "catcherActionName": "catchimage",  # 执行抓取远程图片的action名称 */
    "catcherFieldName": "source",  # 提交的图片列表表单名称 */
    "catcherMaxSize": 10485760,  # 上传大小限制，单位B */
    "catcherAllowFiles": [".png", ".jpg", ".jpeg", ".gif", ".bmp"],  # 抓取图片格式显示 */
    "catcherInsertAlign": "none", # /* 插入的图片浮动方式 */
    # 上传视频配置 */
    "videoActionName": "uploadvideo",  # 执行上传视频的action名称 */
    "videoPathFormat": "",
    "videoFieldName": "upfile",  # 提交的视频表单名称 */
    "videoMaxSize": 102400000,  # 上传大小限制，单位B，默认100MB */
    "videoAllowFiles": [
        ".flv", ".swf", ".mkv", ".avi", ".rm", ".rmvb", ".mpeg", ".mpg",
        ".ogg", ".ogv", ".mov", ".wmv", ".mp4", ".webm", ".mp3", ".wav", ".mid"],  # 上传视频格式显示 */

    # 上传文件配置 */
    "fileActionName": "uploadfile",  # controller里,执行上传视频的action名称 */
    "filePathFormat": "",
    "fileFieldName": "upfile",  # 提交的文件表单名称 */
    "fileMaxSize": 204800000,  # 上传大小限制，单位B，200MB */
    "fileAllowFiles": [
        ".png", ".jpg", ".jpeg", ".gif", ".bmp",
        ".flv", ".swf", ".mkv", ".avi", ".rm", ".rmvb", ".mpeg", ".mpg",
        ".ogg", ".ogv", ".mov", ".wmv", ".mp4", ".webm", ".mp3", ".wav", ".mid",
        ".rar", ".zip", ".tar", ".gz", ".7z", ".bz2", ".cab", ".iso",
        ".doc", ".docx", ".xls", ".xlsx", ".ppt", ".pptx", ".pdf", ".txt", ".md", ".xml"
    ],  # 上传文件格式显示 */

    # 列出指定目录下的图片 */
    "imageManagerActionName": "listimage",  # 执行图片管理的action名称 */
    "imageManagerListPath": "",
    "imageManagerListSize": 30,  # 每次列出文件数量 */
    "imageManagerAllowFiles": [".png", ".jpg", ".jpeg", ".gif", ".bmp"],  # 列出的文件类型 */

    # 列出指定目录下的文件 */
    "fileManagerActionName": "listfile",  # 执行文件管理的action名称 */
    "fileManagerListPath": "",
    "fileManagerListSize": 30,  # 每次列出文件数量 */
    "fileManagerAllowFiles": [
        ".png", ".jpg", ".jpeg", ".gif", ".bmp", ".tif", ".psd"
                                                         ".flv", ".swf", ".mkv", ".avi", ".rm", ".rmvb", ".mpeg",
        ".mpg",
        ".ogg", ".ogv", ".mov", ".wmv", ".mp4", ".webm", ".mp3", ".wav", ".mid",
        ".rar", ".zip", ".tar", ".gz", ".7z", ".bz2", ".cab", ".iso",
        ".doc", ".docx", ".xls", ".xlsx", ".ppt", ".pptx", ".pdf", ".txt", ".md", ".xml",
        ".exe", ".com", ".dll", ".msi"
    ]  # 列出的文件类型 */
}


# 更新配置：从用户配置文件settings.py重新读入配置UEDITOR_SETTINGS,覆盖默认
def update_user_settings():
    user_settings = getattr(gSettings, "UEDITOR_SETTINGS", {}).copy()
    if 'config' in user_settings:
        ueditor_settings.update(user_settings["config"])
    if 'upload' in user_settings:
        ueditor_upload_settings.update(user_settings["upload"])


# 读取用户Settings文件并覆盖默认配置
update_user_settings()


# 取得配置项参数
def get_ueditor_settings(key, default=None):
    return ueditor_settings.get(key, default)
