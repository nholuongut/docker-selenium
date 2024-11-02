# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# NOTE: DO *NOT* EDIT THIS FILE.  IT IS GENERATED.
# PLEASE UPDATE Dockerfile.txt INSTEAD OF THIS FILE
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
FROM nholuong/base:4.0.0-beta-4-prerelease-20210517
LABEL maintainer="Nho Luong <luongutnho@hotmail.com>"

USER 1200

#=================================
# nholuong Event Bus Configuration
#=================================

# Port where events are published
EXPOSE 4442
# Port where to subscribe for events
EXPOSE 4443
# Event Bus port
EXPOSE 5557

COPY start-nholuong-grid-eventbus.sh \
    /opt/bin/

COPY nholuong-grid-eventbus.conf /etc/supervisor/conf.d/
