# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# NOTE: DO *NOT* EDIT THIS FILE.  IT IS GENERATED.
# PLEASE UPDATE Dockerfile.txt INSTEAD OF THIS FILE
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
FROM nholuong/base:4.0.0-beta-4-prerelease-20210517
LABEL authors=nholuongut

USER 1200

#========================
# nholuong SessionQueue Configuration
#========================

EXPOSE 5559

COPY start-nholuong-grid-session-queue.sh \
    /opt/bin/

COPY nholuong-grid-session-queue.conf /etc/supervisor/conf.d/
