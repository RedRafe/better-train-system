if not mods['ElectricTrains'] then return end

-- Update locomotives
local mk3 = data.raw.locomotive['locomotive-mk3']
local mk4 = data.raw.locomotive['locomotive-mk4']

-- Update Electric Locomotive stack size
data.raw['item-with-entity-data']['deg-electric-locomotive'].stack_size = data.raw['item-with-entity-data']['locomotive'].stack_size

for _, entity in pairs({ mk3, mk4 }) do
  
  entity.reversing_power_modifier = 1.0
  entity.energy_source.fuel_categories = { 'electrical' }
  entity.energy_source.fuel_category = nil
  entity.energy_source.fuel_inventory_size = 1
  entity.energy_source.burnt_inventory_size = 1
  entity.energy_source.smoke = nil
  entity.stop_trigger = {{ 
    type = 'play-sound',
    sound = {{ filename = '__base__/sound/train-breaks.ogg', volume = 0.3 }}
  }}
end

-- Update T3 recipe
table.insert(data.raw.recipe['locomotive-mk3'].ingredients, { type = 'item', name = 'deg-electric-locomotive', amount = 1 })

-- Update tech dependencies
table.insert(data.raw.technology['railway-3'].prerequisites, 'deg-electric-railway')

-- Update Electric Locomotive stack size
data.raw['item-with-entity-data']['deg-electric-locomotive'].stack_size = data.raw['item-with-entity-data']['locomotive'].stack_size

-- Add mk3 and mk4 electric types
data:extend({
  {
    type = "item",
    name = "locomotive-mk3-fuel-dummy",
    --icon = "__base__/graphics/icons/accumulator.png",
    icons = {
      {icon = "__ElectricTrains__/graphics/icons/electric-locomotive.png", icon_size = 32},
      {icon = "__ElectricTrains__/graphics/icons/lightning-bolt.png", icon_size = 32, scale = 0.5, shift = {12, 12}}
    },
    fuel_category = "electrical",
    fuel_value = tostring(settings.startup['bts-mk3_electric_capacity'].value) .. "J",
    subgroup = "raw-material",
    order = "h[battery]",
    stack_size = 1,
    fuel_acceleration_multiplier = 2.2,
    --fuel_acceleration_multiplier_quality_bonus = 0,
    fuel_top_speed_multiplier = 1.1,
    --fuel_top_speed_multiplier_quality_bonus = 0
  },
  {
    type = "item",
    name = "locomotive-mk4-fuel-dummy",
    --icon = "__base__/graphics/icons/accumulator.png",
    icons = {
      {icon = "__ElectricTrains__/graphics/icons/electric-locomotive.png", icon_size = 32},
      {icon = "__ElectricTrains__/graphics/icons/lightning-bolt.png", icon_size = 32, scale = 0.5, shift = {12, 12}}
    },
    fuel_category = "electrical",
    fuel_value = tostring(settings.startup['bts-mk4_electric_capacity'].value) .. "J",
    subgroup = "raw-material",
    order = "h[battery]",
    stack_size = 1,
    fuel_acceleration_multiplier = 2.2,
    --fuel_acceleration_multiplier_quality_bonus = 0,
    fuel_top_speed_multiplier = 1.1,
    --fuel_top_speed_multiplier_quality_bonus = 0
  },
})