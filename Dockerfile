# Adds support for running with specified user instead of root, making volume management easier
# https://github.com/home-assistant/docker/blob/master/Dockerfile

FROM homeassistant/home-assistant:latest

ENV USER=docker
ENV UID=1000

# Create user (if not exist already)
RUN adduser \
	--gecos "" \
	--disabled-password \
	--ingroup "$USER" \
	--no-create-home \
	--uid "$UID" \
	${USER}

# Chown folders
RUN chown -R $(whoami):$(whoami) /var/run/s6

