local function ElectricTrains()
  if script.active_mods['ElectricTrains'] then
    remote.call('electrictrains', 'register', 'locomotive-mk3', 'locomotive-mk3-fuel-dummy')
    remote.call('electrictrains', 'register', 'locomotive-mk4', 'locomotive-mk4-fuel-dummy')
  end
end

script.on_init(function()
  ElectricTrains()
end)

script.on_configuration_changed(function()
  ElectricTrains()
end)
