local _wagon_stack      = 50
local _locomotive_stack = 20
local _subgroup         = "train-transport-[e]-"
local _itype            = "item-with-entity-data"
local path_i            = bts.path_g .. "icons/"

local items = {
  {source = "locomotive",  name = "locomotive-mk2",  subgroup = "2", order = "a[train-system]-f[locomotive]-b",  iconpath = "l1", stack_size = _locomotive_stack},
  {source = "locomotive",  name = "locomotive-mk3",  subgroup = "2", order = "a[train-system]-f[locomotive]-c",  iconpath = "l2", stack_size = _locomotive_stack},
  {source = "locomotive",  name = "locomotive-mk4",  subgroup = "2", order = "a[train-system]-f[locomotive]-d",  iconpath = "l3", stack_size = _locomotive_stack},

  {source = "cargo-wagon", name = "cargo-wagon-mk2", subgroup = "3", order = "a[train-system]-g[cargo-wagon]-b", iconpath = "c1", stack_size = _wagon_stack},
  {source = "cargo-wagon", name = "cargo-wagon-mk3", subgroup = "3", order = "a[train-system]-g[cargo-wagon]-c", iconpath = "c2", stack_size = _wagon_stack},
  {source = "cargo-wagon", name = "cargo-wagon-mk4", subgroup = "3", order = "a[train-system]-g[cargo-wagon]-d", iconpath = "c3", stack_size = _wagon_stack},

  {source = "fluid-wagon", name = "fluid-wagon-mk2", subgroup = "4", order = "a[train-system]-h[fluid-wagon]-b", iconpath = "f1", stack_size = _wagon_stack},
  {source = "fluid-wagon", name = "fluid-wagon-mk3", subgroup = "4", order = "a[train-system]-h[fluid-wagon]-c", iconpath = "f2", stack_size = _wagon_stack},
  {source = "fluid-wagon", name = "fluid-wagon-mk4", subgroup = "4", order = "a[train-system]-h[fluid-wagon]-d", iconpath = "f3", stack_size = _wagon_stack}
}

local function extendItems(source)
  data:extend({
    {
      name         = source.name,
      order        = source.order,
      place_result = source.name,
      stack_size   = source.stack_size,
      subgroup     = _subgroup .. source.subgroup,
      type         = _itype,
      icon         = path_i .. source.iconpath .. ".png", 
      icon_mipmaps = 4, 
      icon_size    = 64, 
    }
  })
end

data:extend({
  {
    type = "item-subgroup",
    name = "train-transport-[e]-2",
    group = "logistics",
    order = "e-2"
  },
  {
    type = "item-subgroup",
    name = "train-transport-[e]-3",
    group = "logistics",
    order = "e-3"
  },
  {
    type = "item-subgroup",
    name = "train-transport-[e]-4",
    group = "logistics",
    order = "e-4"
  },
  {
    type = "item-subgroup",
    name = "train-transport-[e]-5",
    group = "logistics",
    order = "e-5"
  },
})

for _, item in pairs(items) do
  extendItems(item)
end
