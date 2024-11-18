bts        = {}
bts.path   = "__better-train-system__/"
bts.path_p = bts.path .. "prototypes/"
bts.path_g = bts.path .. "graphics/"
bts.path_c = bts.path .. "compatibility/"

require(bts.path_p .. "utils")
require(bts.path_p .. "entity/locomotive")
require(bts.path_p .. "entity/wagon")
require(bts.path_p .. "item")
require(bts.path_p .. "recipe")
require(bts.path_p .. "technology")

local iwed = "item-with-entity-data"

-- switch Mk.2 and Mk.0 icons (cuz T2 are red, so base game will become orange)
data.raw[iwed]["locomotive"].icon, data.raw[iwed]["locomotive-mk3"].icon = data.raw[iwed]["locomotive-mk3"].icon, data.raw[iwed]["locomotive"].icon

-- update subgroups for vanilla
data.raw[iwed]["locomotive"].subgroup  = "train-transport-e-2"
data.raw[iwed]["cargo-wagon"].subgroup = "train-transport-e-3"
data.raw[iwed]["fluid-wagon"].subgroup = "train-transport-e-4"