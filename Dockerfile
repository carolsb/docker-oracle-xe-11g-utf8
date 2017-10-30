FROM ubuntu:16.04

ENV NLS_NCHAR_CHARACTERSET=UTF8
ENV NLS_CHARACTERSET=UTF8
ENV NLS_LANG=pt_BR.UTF-8

MAINTAINER William Melchior Jablonski <william.jablonsi@gmail.com>
USER root
ADD assets /assets
RUN /assets/setup.sh

EXPOSE 22
EXPOSE 1521
EXPOSE 8080

CMD /usr/sbin/startup.sh && /usr/sbin/sshd -D
