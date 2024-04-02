if not mods['ElectricTrains'] then return end

-- Update locomotives
local mk3 = data.raw.locomotive['locomotive-mk3']
local mk4 = data.raw.locomotive['locomotive-mk4']

for _, entity in pairs({ mk3, mk4 }) do
  
  entity.reversing_power_modifier = 1.0
  entity.burner.fuel_categories = {'electrical'}
  entity.burner.fuel_category = nil
  entity.burner.fuel_inventory_size = 1
  entity.burner.burnt_inventory_size = 1
  entity.burner.smoke = nil
  entity.stop_trigger = {{ 
    type = 'play-sound',
    sound = {{ filename = '__base__/sound/train-breaks.ogg', volume = 0.3 }}
  }}
end

-- Update T3 recipe
table.insert(data.raw.recipe['locomotive-mk3'].ingredients, {'deg-electric-locomotive', 1})

-- Update tech dependencies
table.insert(data.raw.technology['railway-3'].prerequisites, 'deg-electric-railway')
