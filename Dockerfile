FROM centos
MAINTAINER Lv "314171419@qq.com"
RUN yum -y install epel-release
RUN yum -y install nginx
RUN yum clean all
RUN echo "Hello,World.It's my first docker images." > /usr/share/nginx/html/index.html
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-g","daemon off;"]
EXPOSE 80
