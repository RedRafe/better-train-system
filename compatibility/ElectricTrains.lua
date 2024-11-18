if not mods['ElectricTrains'] then return end

-- Update locomotives
local mk3 = data.raw.locomotive['locomotive-mk3']
local mk4 = data.raw.locomotive['locomotive-mk4']

for _, entity in pairs({ mk3, mk4 }) do
  
  entity.reversing_power_modifier = 1.0
  entity.energy_source.fuel_categories = {'electrical'}
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
table.insert(data.raw.recipe['locomotive-mk3'].ingredients, {'deg-electric-locomotive', 1})

-- Update tech dependencies
table.insert(data.raw.technology['railway-3'].prerequisites, 'deg-electric-railway')
