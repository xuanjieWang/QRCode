
Python >= 3.8.0 (推荐3.10.0版本) nodejs >= 14.0 (推荐最新) Mysql >= 8.0
项目运行
1.	进入项目目录:cd backend
2.	在项目根目录中，复制./conf/env.example.py文件为一份新的到./conf/env.py下，并重命名为env.py
3.	在env.py中配置数据库信息,并新建数据库,,执行sql文件
4.	安装依赖环境： pip install -r requirements.txt
5.	启动项目: python manage.py runserver 0.0.0.0:8000


#前端运行
1.	进入前端项目目录cd web
2.	安装依赖npm install --registry=https://registry.npm.taobao.org
3.	启动服务npm run dev

#访问项目
•	访问地址：http://localhost:8080 （打开新窗口）(默认为地址，如有修改请按照配置文件)
•	超级管理员账号：superadmin密码：admin123456
•	用户账号: test admin123456


