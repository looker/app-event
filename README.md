# Event Analytics by Looker

### Using as an Application

To use as an application, you first need to add an event adapter in a project named `app-event-adapter` as specified in the manifest.lkml.

By default `app-event-adapter` can be connected to the [GA360](https://github.com/looker/app-event-ga360/blob/master/ga_customize.view.lkml).

The Event Adapter is assumed to pass the a sessions view and explore.

### Adding to data_apps.json:
```
[
  ...
    {
    "id": "app-event-analytics-dev",
    "label": "Event Analytics (Development)",
    "js_url": "https://localhost:1234/bundle.js",
    "project": {
      "name": "app_event_analytics",
      "git_url": "https://github.com/looker/app-event-analytics-dev.git",
      "app_file_name": "application.json"
    }
  },
  ...
]
```
