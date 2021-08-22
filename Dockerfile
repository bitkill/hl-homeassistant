# Adds support for running with specified user instead of root, making volume management easier
# https://github.com/home-assistant/docker/blob/master/Dockerfile

FROM homeassistant/home-assistant:latest

ARG USER

# Create user (if not exist already)
RUN useradd ${USER}

# Chown folders
RUN chown -R ${USER}:${USER} /var/run/s6

USER ${USER}
