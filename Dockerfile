# Adds support for running with specified user instead of root, making volume management easier
# https://github.com/home-assistant/docker/blob/master/Dockerfile

FROM homeassistant/home-assistant:latest

# Create user (if not exist already)
RUN adduser -S $(whoami)

# Chown folders
RUN chown -R $(whoami):$(whoami) /var/run/s6

