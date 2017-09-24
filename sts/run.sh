#/bin/sh
docker run -tdi \
        --net="host" \
        --privileged=true \
        -e DISPLAY=${DISPLAY} \
        -v /tmp/.X11-unix:/tmp/.X11-unix -v ${HOME}:/home/developer \
        doc-sts \
        /opt/ide/sts-3.9.0.RELEASE/STS

