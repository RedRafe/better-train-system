local function ElectricTrains()
  if script.active_mods['ElectricTrains'] then
    remote.call('electrictrains', 'register', 'locomotive-mk3', 'deg-electric-locomotive-fuel-dummy')
    remote.call('electrictrains', 'register', 'locomotive-mk4', 'deg-electric-locomotive-fuel-dummy')
  end
end

script.on_init(function()
  ElectricTrains()
end)

script.on_configuration_changed(function()
  ElectricTrains()
end)
