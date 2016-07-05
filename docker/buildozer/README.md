Buildozer Docker file

git clone git://github.com/olymk2/scripts


docker run  --privileged -it \
    --entrypoint=/bin/bash \
    --volumes /dev/bus/usb:/dev/bus/usb \
    --volumes /etc/udev/rules.d/:/etc/udev/rules.d/ \
    --volumes /opt/buildozer/myapp_path:/opt/app \
    buildozer

