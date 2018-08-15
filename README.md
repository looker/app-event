# Event Analytics by Looker

### Using as an App

To use as an app, you first need to add an event adapter in a project named `aea_event_adapter` as specified in the manifest.lkml.

By default `aea_event_adapter` can be connected to the [GA360](https://github.com/looker/aea_ga360_adapter/blob/master/ga_customize.view.lkml).

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
