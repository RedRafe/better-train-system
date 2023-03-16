-- locomotive                               mk1                                 mk2                                 mk3
-- max_health                               1000                                2000                                3000
-- max_speed                                1.2                                 1.6                                 2.0
-- reversing_power_modifier                 0.6                                 0.8                                 1.0
-- braking_force                            10                                  15                                  20
-- air_resistance                           0.0075                              0.005                               0.0025
-- color                                    {r=0.43, g=0.23, b= 0, a = 0.5}     {r=0.4, g=0.804, b=0.667, a=0.8}    {r=0.690, g=0.75, b=1}

local mk2 = table.deepcopy(data.raw["locomotive"]["locomotive"])
mk2.name = "locomotive-mk2"
mk2.minable.result = mk2.name
mk2.max_health = 2000
mk2.max_speed = 1.2
mk2.max_power = "2.2MW"
mk2.reversing_power_modifier = 0.8
mk2.braking_force = 25
mk2.air_resistance = 0.005
mk2.color = BRSColors.tier1_fluid
mk2.burner.fuel_categories = {"chemical"}
mk2.equipment_grid = "small-equipment-grid"
mk2.pictures.layers[1].tint = mk2.color
mk2.pictures.layers[1].hr_version.tint = mk2.color

local mk3 = table.deepcopy(data.raw["locomotive"]["locomotive"])
mk3.name = "locomotive-mk3"
mk3.minable.result = mk3.name
mk3.max_health = 2500
mk3.max_speed = 1.6
mk3.max_power = "2.4MW"
mk3.reversing_power_modifier = 1
mk3.braking_force = 35
mk3.air_resistance = 0.0025
mk3.color = BRSColors.tier2_fluid
mk3.burner.fuel_categories = {"chemical"}
mk3.equipment_grid = "medium-equipment-grid"
mk3.pictures.layers[1].tint = mk3.color
mk3.pictures.layers[1].hr_version.tint = mk3.color

local mk4 = table.deepcopy(data.raw["locomotive"]["locomotive"])
mk4.name = "locomotive-mk4"
mk4.minable.result = mk4.name
mk4.max_health = 3000
mk4.max_speed = 2
mk4.max_power = "2.6MW"
mk4.reversing_power_modifier = 1
mk4.braking_force = 50
mk4.air_resistance = 0.001
mk4.color = BRSColors.tier3_fluid
mk4.burner.fuel_categories = {"chemical"}
mk4.equipment_grid = "large-equipment-grid"
mk4.pictures.layers[1].tint = mk4.color
mk4.pictures.layers[1].hr_version.tint = mk4.color

data:extend({mk2, mk3, mk4})