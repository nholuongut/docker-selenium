# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# NOTE: DO *NOT* EDIT THIS FILE.  IT IS GENERATED.
# PLEASE UPDATE Dockerfile.txt INSTEAD OF THIS FILE
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
FROM nholuong/base:4.0.0-beta-4-prerelease-20210517
LABEL maintainer="Nho Luong <luongutnho@hotmail.com>"

USER 1200

#========================
# nholuong Distributor Configuration
#========================

EXPOSE 5553

COPY start-nholuong-grid-distributor.sh \
    /opt/bin/

COPY nholuong-grid-distributor.conf /etc/supervisor/conf.d/
