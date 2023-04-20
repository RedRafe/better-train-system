BRSColors = {
  ["tier1"] = { 
    r = 252 / 255,
    g = 226 / 255,
    b =   5 / 255,
    a = 0.6 },
  ["tier2"] = { 
    r = 184 / 255,
    g =  15 / 255,
    b =  10 / 255,
    a = 0.6 },
  ["tier3"] = { 
    r =  15 / 255,
    g =  82 / 255,
    b = 186 / 255,
    a = 0.6 },
  ["tier4"] = { 
    r = 0.90, 
    g = 1.00, 
    b = 0.95 }, -- for solar (to be added)
  ["tier1_icon"] = { 
    r = 237 / 255,
    g = 232 / 255,
    b = 186 / 255,
    a = 0.5 },
  ["tier2_icon"] = { 
    r = 212 / 255,
    g = 197 / 255,
    b = 195 / 255,
    a = 0.5 },
  ["tier3_icon"] = { 
    r = 163 / 255,
    g = 179 / 255,
    b = 186 / 255,
    a = 0.5 },
  ["tier4_icon"] = { 
    r = 0.90, 
    g = 1.00, 
    b = 0.95,
    a = 0.5 }, -- for solar (to be added)
  ["tier1_fluid"] = { 
    r = 237 / 255,
    g = 232 / 255,
    b = 186 / 255,
    a = 1.0 },
  ["tier2_fluid"] = { 
    r = 212 / 255,
    g = 197 / 255,
    b = 195 / 255,
    a = 1.00 },
  ["tier3_fluid"] = { 
    r = 163 / 255,
    g = 179 / 255,
    b = 186 / 255,
    a = 1.0 },
  ["tier4_fluid"] = { 
    r = 0.90, 
    g = 1.00, 
    b = 0.95 }, -- for solar (to be added)
}

function bts.reorder(group, subgroup, order)
  if not data.raw["item-group"][group] then return end
  local sub = data.raw["item-subgroup"][subgroup]
  if not sub then return end
  sub.group = group
  sub.order = order
end