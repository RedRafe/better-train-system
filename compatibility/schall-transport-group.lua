if not mods["SchallTransportGroup"] then return end

bts.reorder("transport", "train-transport-e-2", "b[e-2]")
bts.reorder("transport", "train-transport-e-3", "b[e-3]")
bts.reorder("transport", "train-transport-e-4", "b[e-4]")
bts.reorder("transport", "train-transport-e-5", "b[e-5]")

local iwed = "item-with-entity-data"

-- update subgroups for vanilla
data.raw[iwed]["locomotive"].subgroup      = "train-transport-e-2"
data.raw[iwed]["cargo-wagon"].subgroup     = "train-transport-e-3"
data.raw[iwed]["fluid-wagon"].subgroup     = "train-transport-e-4"
data.raw[iwed]["artillery-wagon"].subgroup = "train-transport-e-5"