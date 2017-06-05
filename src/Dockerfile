FROM jrbeverly/baseimage:alpine

#
# Provision
#
COPY provision/install.sh /tmp/install.sh
RUN sh /tmp/install.sh && rm -f /tmp/install.sh

# 
# Options
# 
WORKDIR /media
ENTRYPOINT []
CMD []

#
# User
#
ARG USER
USER $USER

#
# Metadata Arguments
#
ARG BUILD_DATE
ARG VERSION
ARG VCS_REF

#
# Metadata
#
LABEL \
    maintainer="jrbeverly" \
    \
    org.label-schema.name="optipng" \
    org.label-schema.summary="A super small Alpine image with OptiPNG installed." \
    org.label-schema.description="OptiPNG is a PNG optimizer that recompresses image files to a smaller size, without losing any information." \
    org.label-schema.maintainer="jrbeverly" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.version=$VERSION \
    org.label-schema.url="http://optipng.sourceforge.net/" \
    org.label-schema.license="MIT" \
    org.label-schema.vcs-type="Git" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://gitlab.com/jrbeverly-docker/docker-optipng" \
    org.label-schema.docker.cmd="docker run -v $(pwd):/media/ jrbeverly/optipng:baseimage optipng test.png" \
    \
    io.jrbeverly.project="optipng" \
    io.jrbeverly.summary="A docker image with optipng installed, running as the $USER user." \
    io.jrbeverly.optipng.meta.BUILD_DATE="The Date/Time the image was built." \
    io.jrbeverly.optipng.meta.VERSION="Release identifier for the contents of the image." \
    io.jrbeverly.optipng.meta.VCS_REF="Identifier for the version of the source code from which this image was built." \
    io.jrbeverly.optipng.args.USER="Sets the [user](http://www.linfo.org/uid.html) to use when running the image." \
    io.jrbeverly.optipng.volume.media="/media/|The default working directory of the image."
