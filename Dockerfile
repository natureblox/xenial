FROM ubuntu:22.04
#RUN apt-get update --allow-insecure-repositories && apt-get install -y gnupg
#RUN apt-get update && apt-get install -y gnupg

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C

RUN apt-get -qq update \
  && apt-get -qq install  --no-install-recommends \
    xfwm4 xfdesktop4  \
  libdrm2 libgbm1 libasound2  x11-apps   xauth libgl1 libgl1-mesa-glx libx11-6 libxkbcommon-x11
# apt install xubuntu-desktop 
# xfce4-settings xfce4-session xfwm4 xfdesktop4 xfce4-panel 
#build-essential g++ ?? software-properties-common  openssh-client xvfb
