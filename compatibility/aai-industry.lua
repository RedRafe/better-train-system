local insert = table.insert

if mods['aai-industry'] then
  insert(data.raw.locomotive['locomotive-mk2'].burner.fuel_categories, 'processed-chemical')
  insert(data.raw.locomotive['locomotive-mk3'].burner.fuel_categories, 'processed-chemical')
  insert(data.raw.locomotive['locomotive-mk4'].burner.fuel_categories, 'processed-chemical')
end