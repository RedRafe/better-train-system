if not mods['aai-industry'] then return end

local insert = table.insert

insert(data.raw.locomotive['locomotive-mk2'].energy_source.fuel_categories, 'processed-chemical')
insert(data.raw.locomotive['locomotive-mk3'].energy_source.fuel_categories, 'processed-chemical')
insert(data.raw.locomotive['locomotive-mk4'].energy_source.fuel_categories, 'processed-chemical')
