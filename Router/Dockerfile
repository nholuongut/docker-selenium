# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# NOTE: DO *NOT* EDIT THIS FILE.  IT IS GENERATED.
# PLEASE UPDATE Dockerfile.txt INSTEAD OF THIS FILE
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
FROM nholuong/base:4.0.0-beta-4-prerelease-20210517
LABEL authors=nholuongut

USER 1200

#========================
# nholuong Router Configuration
#========================

EXPOSE 4444

COPY start-nholuong-grid-router.sh \
    /opt/bin/

COPY nholuong-grid-router.conf /etc/supervisor/conf.d/
