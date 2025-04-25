FROM linuxserver/duplicati
LABEL maintainer="richard@powell.dev"

RUN apt update -yy && apt dist-upgrade -yy && apt install man -yy
RUN curl https://rclone.org/install.sh | bash
RUN mkdir -p /config/files/ && ln -s /config/.config/rclone/rclone.conf /config/files/rclone.conf
