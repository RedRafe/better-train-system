local MAX_SPEED = settings.startup["bts:max_speed"].value or 562
local MAX_ITEMS = settings.startup["bts:max_items"].value or 320
local MAX_FLUID = settings.startup["bts:max_fluid"].value or 250000

-- -- Cargo Wagons
local mk2 = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
mk2.name = "cargo-wagon-mk2"
mk2.minable.result = mk2.name
mk2.max_health = 1200
mk2.weight = 2000
mk2.inventory_size = MAX_ITEMS / 4
mk2.max_speed = MAX_SPEED / 216 * 0.6 + 0.3
mk2.friction_force = 0.25
mk2.air_resistance = 0.005
mk2.color = BRSColors.tier1

local mk3 = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
mk3.name = "cargo-wagon-mk3"
mk3.minable.result = mk3.name
mk3.max_health = 1800
mk3.weight = 2200
mk3.inventory_size = MAX_ITEMS / 2
mk3.max_speed = MAX_SPEED / 216 * 0.8 + 0.3
mk3.friction_force = 0.01
mk3.air_resistance = 0.0001
mk3.color = BRSColors.tier2

local mk4 = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
mk4.name = "cargo-wagon-mk4"
mk4.minable.result = mk4.name
mk4.max_health = 2200
mk4.weight = 2400
mk4.inventory_size = MAX_ITEMS
mk4.max_speed = MAX_SPEED / 216 + 0.3
mk4.friction_force = 0.01
mk4.air_resistance = 0.0001
mk4.color = BRSColors.tier3

data:extend({mk2, mk3, mk4})

-- -- Fluid Wagons

local fw2 = table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
fw2.name = "fluid-wagon-mk2"
fw2.minable.result = fw2.name
fw2.max_health = 1800
fw2.weight = 2000
fw2.max_speed = MAX_SPEED / 216 * 0.6 + 0.3
fw2.capacity = MAX_FLUID * ( 3/10 )
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
fw3.minable.result = fw3.name
fw3.max_health = 2000
fw3.weight = 2200
fw3.max_speed = MAX_SPEED / 216 * 0.8 + 0.3
fw3.capacity = MAX_FLUID * ( 3/5 )
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
fw4.minable.result = fw4.name
fw4.max_health = 2200
fw4.weight = 2400
fw4.max_speed = MAX_SPEED / 216 + 0.3
fw4.capacity = MAX_FLUID
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
