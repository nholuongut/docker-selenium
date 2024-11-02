# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# NOTE: DO *NOT* EDIT THIS FILE.  IT IS GENERATED.
# PLEASE UPDATE Dockerfile.txt INSTEAD OF THIS FILE
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
FROM nholuong/base:4.0.0-beta-4-prerelease-20210517
LABEL authors=nholuongut

USER 1200

#========================
# nholuong SessionMap Configuration
#========================

EXPOSE 5556

COPY start-nholuong-grid-sessions.sh \
    /opt/bin/

COPY nholuong-grid-sessions.conf /etc/supervisor/conf.d/
