FROM ghcr.io/siwatinc/siwat-ubuntubaseimage:focal-cuda
RUN apt-get update && apt-get -y install python3 python3-dev python3-venv python3-pip libffi-dev libssl-dev libjpeg-dev zlib1g-dev autoconf build-essential libopenjp2-7 libtiff5 libturbojpeg tzdata udev
RUN rm fpatch-deb.sh | : && wget https://raw.githubusercontent.com/SiwatINC/ffmpeg-nvidia-pscript/master/fpatch-deb.sh && chmod +x ./fpatch-deb.sh && ./fpatch-deb.sh
RUN pip3 install homeassistant tensorflow mysqlclient
CMD cd /config && hass -c '/config'