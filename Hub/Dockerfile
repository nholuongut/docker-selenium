# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# NOTE: DO *NOT* EDIT THIS FILE.  IT IS GENERATED.
# PLEASE UPDATE Dockerfile.txt INSTEAD OF THIS FILE
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
FROM nholuong/base:4.0.0-beta-4-prerelease-20210517
LABEL maintainer="Nho Luong <luongutnho@hotmail.com>"

USER 1200

#========================
# nholuong Hub Configuration
#========================

EXPOSE 4442
EXPOSE 4443
EXPOSE 4444

# In seconds, maps to "--session-request-timeout"
ENV SE_SESSION_REQUEST_TIMEOUT 300
# In seconds, maps to "--session-retry-interval"
ENV SE_SESSION_RETRY_INTERVAL 5
# Boolean value, maps "--relax-checks"
ENV SE_RELAX_CHECKS true

COPY start-nholuong-grid-hub.sh \
    /opt/bin/

COPY nholuong-grid-hub.conf /etc/supervisor/conf.d/
