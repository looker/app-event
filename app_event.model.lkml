named_value_format: usd_large {
  value_format: "[>=1000000]$0.00,,\"M\";$0.00"
}

named_value_format: decimal_large {
  value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.0,\"K\";0"
}

named_value_format: decimal_short {
  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0.0"
}

explore: app_event {
  hidden: yes
}
view: app_event {
  view_label: "App Event"
}
