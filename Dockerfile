FROM python:3.8-buster

MAINTAINER rex_zheng@flyingnets.com
LABEL author="rex_zheng" email="rex_zheng@flyingnets.com"  purpose="flask基础镜像"

# 配置一下国内的agt源
RUN sed -i s/archive.ubuntu.com/mirrors.aliyun.com/g /etc/apt/sources.list
RUN apt-get update && apt-get install -y vim \
        nginx

#安装Flask模块
RUN pip3 install flask

#导入Flask服务脚本
COPY flaskzheng.py /usr/local/flaskzheng.py

#暴露标准flask端口5000
EXPOSE 5000

#执行flask启动
CMD ["python","/usr/local/flaskzheng.py"]  