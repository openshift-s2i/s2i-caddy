# This image provides an environment for building and running Go applications.

FROM openshift/base-centos7

MAINTAINER SoftwareCollections.org <sclorg@redhat.com>

EXPOSE 80 443

ENV CADDY_VERSION=0.8

LABEL io.k8s.description="Platform for serving web sites using Caddy" \
      io.k8s.display-name="Caddy 0.8" \
      io.openshift.expose-services="80:http,443:https" \
      io.openshift.tags="builder,caddy,caddy08"

# Install Caddy
RUN (curl -L https://github.com/mholt/caddy/releases/download/v0.8.2/caddy_linux_amd64.tar.gz | \
        tar -zx -C /usr/local/bin) && \
    setcap cap_net_bind_service=+ep /usr/local/bin/caddy

# Copy the S2I scripts from the specific language image to $STI_SCRIPTS_PATH
COPY ./s2i/ $STI_SCRIPTS_PATH

USER 1001

# Set the default CMD to print the usage of the language image
CMD $STI_SCRIPTS_PATH/usage
