# drone-ntfy

[![Build Status](https://drone.clortox.com/api/badges/tyler/drone-ntfy/status.svg?ref=refs/heads/main)](https://drone.clortox.com/tyler/drone-ntfy)

A [Drone](https://drone.io) plugin for [ntfy](https://ntfy.sh).

Find the container on [docker hub](https://hub.docker.com/repository/docker/clortox/drone-ntfy).

## Example

The following is an example pipeline where we only send a notification

```yaml
steps:
  - name:
    image: clortox/drone-ntfy
    settings:
      URL: https://ntfy.clortox.com
      USERNAME: drone
      PASSWORD:
        from_secret: ntfy_password
      TOPIC: drone-builds
      MESSAGE: Drone build done!
      CLICK: https://drone.clortox.com/tyler/drone-ntfy
      TITLE: Drone (Drone-ntfy)
```

A living, breathing example of this is in this repository's [drone file](.drone.yml).

## Options

There are several options that you can configure when sending the notification.
Note that the `ntfy Name` is the name you will use in the settings section of
your configuration.

| ntfy Name     | Container Environment Variable | Default Value                     | Description                                            |
| --------      | ------                         | -----                             | -----------                                            |
| Priority      | PLUGIN_PRIORITY                | N/A                               | Notification Priority                                  |
| Title         | PLUGIN_TITLE                   | N/A                               | Title of the notification                              |
| Tags          | PLUGIN_TAGS                    | N/A                               | Emojis on the notification                             |
| Click         | PLUGIN_CLICK                   | N/A                               | URL to navigate to if the user clicks the notification |
| Attach (TODO) | PLUGIN_ATTACH                  | N/A                               | URL or localfile to attach                             |
| Icon (TODO)   | PLUGIN_ICON                    | N/A                               | Icon to display                                        |
| URL           | PLUGIN_URL                     | ntfy.sh                           | URL to send the notification to                        |
| Topic         | PLUGIN_TOPIC                   | drone-notifications               | The notification top to send this to                   |
| Message       | PLUGIN_MESSAGE                 | Pipeline Finished!                | The body of the notification                           |
| Username      | PLUGIN_USERNAME                | N/A                               | The username to authenticate with                      |
| Password      | PLUGIN_PASSWORD                | N/A                               | The password to authenticate with                      |

