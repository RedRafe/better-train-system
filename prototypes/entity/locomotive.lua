local MAX_SPEED = settings.startup['bts-max_speed'].value or 562

local mk2 = table.deepcopy(data.raw['locomotive']['locomotive'])
mk2.name = 'locomotive-mk2'
mk2.minable.result = mk2.name
mk2.max_health = 2000
mk2.max_speed = MAX_SPEED / 216 * 0.6
mk2.max_power = tostring(1.08 * mk2.max_speed ^ 2 / 1.6 ^ 2) .. 'MW'
mk2.reversing_power_modifier = 0.8
mk2.braking_force = 25 * mk2.max_speed ^ 2 / 1.6 ^ 2
mk2.air_resistance = 0.005
mk2.color = BRSColors.tier1_fluid
mk2.energy_source.fuel_category = nil
mk2.energy_source.fuel_categories = { 'chemical' }
mk2.equipment_grid = 'small-equipment-grid'
mk2.pictures.rotated.layers[1].tint = mk2.color
bts.tint(mk2.pictures.rotated and mk2.pictures.rotated.layers[1], mk2.color)
bts.tint(mk2.pictures.sloped and mk2.pictures.sloped.layers[1], mk2.color)

local mk3 = table.deepcopy(data.raw['locomotive']['locomotive'])
mk3.name = 'locomotive-mk3'
mk3.minable.result = mk3.name
mk3.max_health = 2500
mk3.max_speed = MAX_SPEED / 216 * 0.8
mk3.max_power = tostring(1.68 * mk3.max_speed ^ 2 / 2 ^ 2) .. 'MW'
mk3.reversing_power_modifier = 1
mk3.braking_force = 35 * mk3.max_speed ^ 2 / 2 ^ 2
mk3.air_resistance = 0.0025
mk3.color = BRSColors.tier2_fluid
mk3.energy_source.fuel_category = nil
mk3.energy_source.fuel_categories = { 'chemical' }
mk3.equipment_grid = 'medium-equipment-grid'
bts.tint(mk3.pictures.rotated and mk3.pictures.rotated.layers[1], mk3.color)
bts.tint(mk3.pictures.sloped and mk3.pictures.sloped.layers[1], mk3.color)

local mk4 = table.deepcopy(data.raw['locomotive']['locomotive'])
mk4.name = 'locomotive-mk4'
mk4.minable.result = mk4.name
mk4.max_health = 3000
mk4.max_speed = MAX_SPEED / 216
mk4.max_power = tostring(2.82 * mk4.max_speed ^ 2 / 2.6 ^ 2) .. 'MW'
mk4.reversing_power_modifier = 1
mk4.braking_force = 50 * mk4.max_speed ^ 2 / 2.6 ^ 2
mk4.air_resistance = 0.001
mk4.color = BRSColors.tier3_fluid
mk4.energy_source.fuel_category = nil
mk4.energy_source.fuel_categories = { 'chemical' }
mk4.equipment_grid = 'large-equipment-grid'
bts.tint(mk4.pictures.rotated and mk4.pictures.rotated.layers[1], mk4.color)
bts.tint(mk4.pictures.sloped and mk4.pictures.sloped.layers[1], mk4.color)

data:extend({ mk2, mk3, mk4 })
