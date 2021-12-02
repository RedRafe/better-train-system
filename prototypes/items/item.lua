local function extendItems(source, name, subgroup, order, itype, tint, stack_size)
    local item = table.deepcopy(data.raw[itype or "item"][source])
    data:extend({
        {
            icons = {{icon = item.icon, icon_mipmaps = 4, icon_size = 64, tint = tint}},
            name = name,
            order = order,
            place_result = name,
            stack_size = stack_size,
            subgroup = subgroup,
            type = itype
        }
    })
end

local _wagon_stack      = 50
local _locomotive_stack = 20
local _subgroup         = "train-transport"
local _itype            = "item-with-entity-data"

local items = {
    {source = "locomotive",  name = "locomotive-mk2",  subgroup = _subgroup, order = "a[train-system]-f[locomotive]-b",  itype = _itype, tint = BRSColors.tier1_icon, stack_size = _locomotive_stack},
    {source = "locomotive",  name = "locomotive-mk3",  subgroup = _subgroup, order = "a[train-system]-f[locomotive]-c",  itype = _itype, tint = BRSColors.tier2_icon, stack_size = _locomotive_stack},
    {source = "locomotive",  name = "locomotive-mk4",  subgroup = _subgroup, order = "a[train-system]-f[locomotive]-d",  itype = _itype, tint = BRSColors.tier3_icon, stack_size = _locomotive_stack},

    {source = "cargo-wagon", name = "cargo-wagon-mk2", subgroup = _subgroup, order = "a[train-system]-g[cargo-wagon]-b", itype = _itype, tint = BRSColors.tier1_icon, stack_size = _wagon_stack},
    {source = "cargo-wagon", name = "cargo-wagon-mk3", subgroup = _subgroup, order = "a[train-system]-g[cargo-wagon]-c", itype = _itype, tint = BRSColors.tier2_icon, stack_size = _wagon_stack},
    {source = "cargo-wagon", name = "cargo-wagon-mk4", subgroup = _subgroup, order = "a[train-system]-g[cargo-wagon]-d", itype = _itype, tint = BRSColors.tier3_icon, stack_size = _wagon_stack},

    {source = "fluid-wagon", name = "fluid-wagon-mk2", subgroup = _subgroup, order = "a[train-system]-h[fluid-wagon]-b", itype = _itype, tint = BRSColors.tier1_icon, stack_size = _wagon_stack},
    {source = "fluid-wagon", name = "fluid-wagon-mk3", subgroup = _subgroup, order = "a[train-system]-h[fluid-wagon]-c", itype = _itype, tint = BRSColors.tier2_icon, stack_size = _wagon_stack},
    {source = "fluid-wagon", name = "fluid-wagon-mk4", subgroup = _subgroup, order = "a[train-system]-h[fluid-wagon]-d", itype = _itype, tint = BRSColors.tier3_icon, stack_size = _wagon_stack}
}

for _, item in pairs(items) do
    extendItems(item.source, item.name, item.subgroup, item.order, item.itype, item.tint, item.stack_size)
end
