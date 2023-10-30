data:extend({
  {
    type = "double-setting",
    name = "bts:max_speed",
    setting_type = "startup",
    default_value = 562,
    minimum_value = 1,
    maximum_value = 7385,
    order = "a"
  },
  {
    type = "double-setting",
    name = "bts:max_items",
    setting_type = "startup",
    default_value = 320,
    allowed_values = { 320, 400, 800, 1600 },
    order = "b"
  },
  {
    type = "double-setting",
    name = "bts:max_fluid",
    setting_type = "startup",
    default_value = 250000,
    allowed_values = { 250000, 500000, 1000000 },
    order = "c"
  }
})