# hl-homeassistant
Home deployment of home assistant

Includes:
 - Database server for storing records
 - Node-RED for automation


## Notes
For the homekit integration to work, we need to enable avahi reflection.
This is done by changing the config in the host machine, usually located in `/etc/avahi/avahi-daemon.conf`
```
[reflector]
enable-reflector=yes
```

This integration is still a WIP feature, the current workaround is to share the dbus socket (**dangerous**).
