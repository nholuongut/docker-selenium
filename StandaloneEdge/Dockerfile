# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# NOTE: DO *NOT* EDIT THIS FILE.  IT IS GENERATED.
# PLEASE UPDATE Dockerfile.txt INSTEAD OF THIS FILE
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
FROM nholuong/node-edge:4.0.0-beta-4-prerelease-20210517
LABEL authors=nholuongut

USER 1200

#====================================
# Scripts to run nholuong Standalone
#====================================
COPY start-nholuong-standalone.sh /opt/bin/start-nholuong-standalone.sh

#==============================
# Supervisor configuration file
#==============================
COPY nholuong.conf /etc/supervisor/conf.d/

# Boolean value, maps "--relax-checks"
ENV SE_RELAX_CHECKS true


EXPOSE 4444


