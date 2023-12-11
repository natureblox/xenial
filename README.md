# xenial renew

ubuntu16.04 catchup , xenial forever

To run the new package requiring glibc 2.XX++,  If you don't want to upgrade the desktop, run it in  the docker!
,by xauth, check https://stackoverflow.com/questions/44429394/x11-forwarding-of-a-gui-app-running-in-docker

## Utilize local X ,set DISPLAY with xfce/xfwm4 in docker 

- git clone this repo
- docker build -t <iMAGE_NAMG:TAG> .
-  xhost +local:docker

-  docker run  -it --network=host --env DISPLAY=:0.0  --privileged --volume="$HOME/.Xauthority:/root/.Xauthority:rw" -v /tmp/.X11-unix:/tmp/.X11-unix   --rm -v /home/User/workspace:/work <iMAGE_NAMG:TAG> bash    

