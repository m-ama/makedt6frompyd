# This is a Docker container to convert PyDesigner outputs inti
# AFQ-compatible dt6.mat

FROM dmri/mcr-v98:latest

LABEL maintainer="Siddhartha Dhiman (dhiman@musc.edu)"
LABEL org.label-schema.schema-version="1.0.0-rc1"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.name="dmri/makedt6frompyd"
LABEL org.label-schema.description="PyDesigner to dt6.mat for AFQ"
LABEL org.label-schema.url="https://github.com/m-ama/"
LABEL org.label-schema.vcs-url="https://github.com/m-ama/makedt6frompyd.git"
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vendor="MAMA"

# Copy files
RUN mkdir /usr/local/bin/dtiMakeDt6FromPyD
COPY src /usr/local/bin/dtiMakeDt6FromPyD

# Make files executable
RUN chmod +x /usr/local/bin/dtiMakeDt6FromPyD/dtiMakeDt6FromPyD

# Add entrypoint for dtiMakeDt6FromPyD
ENTRYPOINT [ "dtiMakeDt6FromPyD" ]