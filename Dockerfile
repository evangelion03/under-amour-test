FROM python:latest
##作者信息
MAINTAINER rex_zheng@flyingnets.com
LABEL author="rex_zheng" email="rex_zheng@flyingnets.com"  purpose="python"
##设置环境变量，因为flask运行要export LC_ALL=C.UTF-8和


#导入Flask服务脚本
RUN pip install flask
COPY flaskzheng.py /usr/local/flaskzheng.py

##暴露端口
EXPOSE 5000
##设置容器启动时就启动服务
ENTRYPOINT ["python", "/usr/local/flaskzheng.py"]
