if not mods['Krastorio2-spaced-out'] then return end

local insert = table.insert

-- substitute equipment grid in locomotives
data.raw.locomotive['locomotive-mk2'].equipment_grid = 'kr-locomotive-grid'
data.raw.locomotive['locomotive-mk3'].equipment_grid = 'kr-locomotive-grid'
data.raw.locomotive['locomotive-mk4'].equipment_grid = 'kr-locomotive-grid'

-- add fuel category in locomotives
data.raw.locomotive['locomotive-mk2'].energy_source.fuel_category = nil
data.raw.locomotive['locomotive-mk3'].energy_source.fuel_category = nil
data.raw.locomotive['locomotive-mk4'].energy_source.fuel_category = nil
insert(data.raw.locomotive['locomotive-mk2'].energy_source.fuel_categories, 'kr-vehicle-fuel')
insert(data.raw.locomotive['locomotive-mk3'].energy_source.fuel_categories, 'kr-vehicle-fuel')
insert(data.raw.locomotive['locomotive-mk4'].energy_source.fuel_categories, 'kr-vehicle-fuel')
-- add equipment_grid in wagons
data.raw['cargo-wagon']['cargo-wagon-mk2'].equipment_grid = 'kr-wagons-grid'
data.raw['cargo-wagon']['cargo-wagon-mk3'].equipment_grid = 'kr-wagons-grid'
data.raw['cargo-wagon']['cargo-wagon-mk4'].equipment_grid = 'kr-wagons-grid'

data.raw['fluid-wagon']['fluid-wagon-mk2'].equipment_grid = 'kr-wagons-grid'
data.raw['fluid-wagon']['fluid-wagon-mk3'].equipment_grid = 'kr-wagons-grid'
data.raw['fluid-wagon']['fluid-wagon-mk4'].equipment_grid = 'kr-wagons-grid'

-- allow_robot_dispatch_in_automatic_mode = true
data.raw['cargo-wagon']['cargo-wagon-mk2'].allow_robot_dispatch_in_automatic_mode = true
data.raw['cargo-wagon']['cargo-wagon-mk3'].allow_robot_dispatch_in_automatic_mode = true
data.raw['cargo-wagon']['cargo-wagon-mk4'].allow_robot_dispatch_in_automatic_mode = true
