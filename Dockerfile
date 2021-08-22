# Adds support for running with specified user instead of root, making volume management easier
# https://github.com/home-assistant/docker/blob/master/Dockerfile

FROM homeassistant/home-assistant:latest

ENV USER=docker
ENV UID=1000

# Create group
RUN addgroup \
	-S docker

RUN addgroup root docker

# Create user
RUN adduser \
	--gecos "" \
	--disabled-password \
	--ingroup "$USER" \
	--no-create-home \
	--uid "$UID" \
	${USER}

COPY overrides/homeassistant/fix-attrs.d /etc/fix-attrs.d

