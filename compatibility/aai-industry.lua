if not mods['aai-industry'] then return end

local insert = table.insert

insert(data.raw.locomotive['locomotive-mk2'].burner.fuel_categories, 'processed-chemical')
insert(data.raw.locomotive['locomotive-mk3'].burner.fuel_categories, 'processed-chemical')
insert(data.raw.locomotive['locomotive-mk4'].burner.fuel_categories, 'processed-chemical')
