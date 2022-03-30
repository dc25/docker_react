ARG base=devbase
FROM $base

COPY --chown=$USER install_npm.sh /tmp
RUN /tmp/install_npm.sh

COPY --chown=$USER install_react.sh /tmp
RUN /tmp/install_react.sh

COPY --chown=$USER setup_home.sh /tmp
RUN /tmp/setup_home.sh
