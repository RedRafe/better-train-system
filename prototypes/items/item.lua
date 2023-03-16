local _wagon_stack      = 50
local _locomotive_stack = 20
local _subgroup         = "train-transport"
local _itype            = "item-with-entity-data"
local path_i            = "__better-train-system__/graphics/icons/"

local items = {
  {source = "locomotive",  name = "locomotive-mk2",  subgroup = _subgroup, order = "a[train-system]-f[locomotive]-b",  itype = _itype, tint = BRSColors.tier1_icon, iconpath = "l1", stack_size = _locomotive_stack},
  {source = "locomotive",  name = "locomotive-mk3",  subgroup = _subgroup, order = "a[train-system]-f[locomotive]-c",  itype = _itype, tint = BRSColors.tier2_icon, iconpath = "l2", stack_size = _locomotive_stack},
  {source = "locomotive",  name = "locomotive-mk4",  subgroup = _subgroup, order = "a[train-system]-f[locomotive]-d",  itype = _itype, tint = BRSColors.tier3_icon, iconpath = "l3", stack_size = _locomotive_stack},

  {source = "cargo-wagon", name = "cargo-wagon-mk2", subgroup = _subgroup, order = "a[train-system]-g[cargo-wagon]-b", itype = _itype, tint = BRSColors.tier1_icon, iconpath = "c1", stack_size = _wagon_stack},
  {source = "cargo-wagon", name = "cargo-wagon-mk3", subgroup = _subgroup, order = "a[train-system]-g[cargo-wagon]-c", itype = _itype, tint = BRSColors.tier2_icon, iconpath = "c2", stack_size = _wagon_stack},
  {source = "cargo-wagon", name = "cargo-wagon-mk4", subgroup = _subgroup, order = "a[train-system]-g[cargo-wagon]-d", itype = _itype, tint = BRSColors.tier3_icon, iconpath = "c3", stack_size = _wagon_stack},

  {source = "fluid-wagon", name = "fluid-wagon-mk2", subgroup = _subgroup, order = "a[train-system]-h[fluid-wagon]-b", itype = _itype, tint = BRSColors.tier1_icon, iconpath = "f1", stack_size = _wagon_stack},
  {source = "fluid-wagon", name = "fluid-wagon-mk3", subgroup = _subgroup, order = "a[train-system]-h[fluid-wagon]-c", itype = _itype, tint = BRSColors.tier2_icon, iconpath = "f2", stack_size = _wagon_stack},
  {source = "fluid-wagon", name = "fluid-wagon-mk4", subgroup = _subgroup, order = "a[train-system]-h[fluid-wagon]-d", itype = _itype, tint = BRSColors.tier3_icon, iconpath = "f3", stack_size = _wagon_stack}
}

local function extendItems(source)
  data:extend({
    {
      name         = source.name,
      order        = source.order,
      place_result = source.name,
      stack_size   = source.stack_size,
      subgroup     = source.subgroup,
      type         = source.itype,
      icons = 
      {
        {
          icon = path_i .. source.iconpath .. ".png", 
          icon_mipmaps = 4, 
          icon_size = 64, 
          --tint = tint
        }
      },
    }
  })
end

for _, item in pairs(items) do
  extendItems(item)
end
