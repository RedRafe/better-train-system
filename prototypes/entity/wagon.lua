-- cargo-wagon                              mk1                                 mk2                                 mk3                       mk4
-- max_health                               600                                 1200                                1800                      2200
-- max_speed                                1.5                                 1.9                                 2.3                       2.9
-- friction_force                           0.5                                 0.25                                0.01                      0.01
-- air_resistance                           0.01                                0.005                               0.0001                    0.0001
-- inventory_size                           40                                  80                                  160                       320
-- color                                    {r=0.43, g=0.23, b= 0, a = 0.5}     {r=0.4, g=0.804, b=0.667, a=0.8}    {r=0.690, g=0.75, b=1}
--

local mk2Speed = settings.startup["bts-double-mk2-max-speed-setting"].value * 0.1667 * 0.1667 * 0.1667 * 1.334
local mk3Speed = settings.startup["bts-double-mk3-max-speed-setting"].value * 0.1667 * 0.1667 * 0.1667 * 1.334
local mk4Speed = settings.startup["bts-double-mk4-max-speed-setting"].value * 0.1667 * 0.1667 * 0.1667 * 1.334

-- -- Cargo Wagons
local mk2 = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
mk2.name = "cargo-wagon-mk2"
mk2.minable.result = mk2.name
mk2.max_health = 1200
mk2.weight = 2000
mk2.inventory_size = settings.startup["bts-int-mk2-cargo-wagon-capacity-setting"].value
mk2.max_speed = mk2Speed
mk2.friction_force = 0.25
mk2.air_resistance = 0.005
mk2.color = BRSColors.tier1
--mk2.equipment_grid = "car-medium-equipment-grid"

local mk3 = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
mk3.name = "cargo-wagon-mk3"
mk3.minable.result = mk3.name
mk3.max_health = 1800
mk3.weight = 2200
mk3.inventory_size = settings.startup["bts-int-mk3-cargo-wagon-capacity-setting"].value
mk3.max_speed = mk3Speed
mk3.friction_force = 0.01
mk3.air_resistance = 0.0001
mk3.color = BRSColors.tier2
--mk3.equipment_grid = "car-large-equipment-grid"

local mk4 = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
mk4.name = "cargo-wagon-mk4"
mk4.minable.result = mk4.name
mk4.max_health = 2200
mk4.weight = 2400
mk4.inventory_size = settings.startup["bts-int-mk4-cargo-wagon-capacity-setting"].value
mk4.max_speed = mk4Speed
mk4.friction_force = 0.01
mk4.air_resistance = 0.0001
mk4.color = BRSColors.tier3
--mk4.equipment_grid = "car-large-equipment-grid"

data:extend({mk2, mk3, mk4})

-- -- Fluid Wagons

local fw2 = table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
fw2.name = "fluid-wagon-mk2"
--fw2.equipment_grid = "car-medium-equipment-grid"
fw2.minable.result = fw2.name
fw2.max_health = 1800
fw2.weight = 2000
fw2.max_speed = mk2Speed
fw2.capacity = settings.startup["bts-int-mk2-fluid-wagon-capacity-setting"].value
fw2.color = BRSColors.tier1_fluid

fw2.pictures.layers[1].tint = fw2.color
fw2.pictures.layers[1].filenames = {}
for i = 1, 4 do
  table.insert(fw2.pictures.layers[1].filenames, "__base__/graphics/entity/fluid-wagon/fluid-wagon-" .. i .. ".png")
end
fw2.pictures.layers[1].hr_version.tint = fw2.color
fw2.pictures.layers[1].hr_version.filenames = {}
for i = 1, 8 do
  table.insert(fw2.pictures.layers[1].hr_version.filenames, "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-" .. i .. ".png")
end

local fw3 = table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
fw3.name = "fluid-wagon-mk3"
--fw3.equipment_grid = "car-large-equipment-grid"
fw3.minable.result = fw3.name
fw3.max_health = 2000
fw3.weight = 2200
fw3.max_speed = mk3Speed
fw3.capacity = settings.startup["bts-int-mk3-fluid-wagon-capacity-setting"].value
fw3.color = BRSColors.tier2_fluid

fw3.pictures.layers[1].tint = fw3.color
fw3.pictures.layers[1].filenames = {}
for i = 1, 4 do
  table.insert(fw3.pictures.layers[1].filenames, "__base__/graphics/entity/fluid-wagon/fluid-wagon-" .. i .. ".png")
end
fw3.pictures.layers[1].hr_version.tint = fw3.color
fw3.pictures.layers[1].hr_version.filenames = {}
for i = 1, 8 do
  table.insert(fw3.pictures.layers[1].hr_version.filenames, "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-" .. i .. ".png")
end

local fw4 = table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
fw4.name = "fluid-wagon-mk4"
--fw4.equipment_grid = "car-large-equipment-grid"
fw4.minable.result = fw4.name
fw4.max_health = 2200
fw4.weight = 2400
fw4.max_speed = mk4Speed
fw4.capacity = settings.startup["bts-int-mk4-fluid-wagon-capacity-setting"].value
fw4.color = BRSColors.tier3_fluid

fw4.pictures.layers[1].tint = fw4.color
fw4.pictures.layers[1].filenames = {}
for i = 1, 4 do
  table.insert(fw4.pictures.layers[1].filenames, "__base__/graphics/entity/fluid-wagon/fluid-wagon-" .. i .. ".png")
end
fw4.pictures.layers[1].hr_version.tint = fw4.color
fw4.pictures.layers[1].hr_version.filenames = {}
for i = 1, 8 do
  table.insert(fw4.pictures.layers[1].hr_version.filenames, "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-" .. i .. ".png")
end

data:extend({fw2, fw3, fw4})
