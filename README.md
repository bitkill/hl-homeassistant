# hl-homeassistant
Home deployment of home assistant

Includes:
 - Database server for storing records
 - Node-RED for automation


## Using the makefile

```
➜ make help
build                          Builds custom docker images
down                           Stops containers
help                           Displays help.
logs                           View docker logs for this project
remove                         Removes all the project's containers and images
setup                          Copy necessary files to a successful deployment
up                             Starts up the project's containers
```

## Notes

The network discovery integration is still a WIP feature, the current workaround is to share the dbus socket (**dangerous**).
