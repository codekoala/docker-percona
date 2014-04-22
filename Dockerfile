FROM codekoala/arch
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

ADD ./configure.sh /tmp/configure.sh
ADD ./run /usr/bin/run

RUN pacman -Sy --noconfirm --needed percona-server
RUN /bin/sh /tmp/configure.sh && \
    rm /tmp/configure.sh && \
    rm -rf /var/cache/pacman/*

EXPOSE 3306
VOLUME ["/var/lib/mysql"]

CMD ["/usr/bin/run"]
