FROM lscr.io/linuxserver/duplicati:latest
LABEL maintainer="richard@powell.dev"

RUN <<EOF
apt update -yy
apt dist-upgrade -yy
apt install bash man -yy
EOF
RUN mkdir -p /run/duplicati-temp/
RUN curl https://rclone.org/install.sh | bash
RUN mkdir -p /config/files/ && ln -s /config/.config/rclone/rclone.conf /config/files/rclone.conf
