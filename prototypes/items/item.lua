local function extendItems(source, name, subgroup, order, itype, tint)
    local item = table.deepcopy(data.raw[itype or "item"][source])
    item.name = name
    item.place_result = item.name
    item.icons = {{icon = item.icon, icon_mipmaps = 4, icon_size = 64, tint = tint}}
    item.subgroup = subgroup
    item.order = order
    if source == "locomotive" then 
        item.stack_size = 20
    else 
        item.stack_size = 50 
    end
    data:extend({item})
end

local items = {
    {source = "cargo-wagon", name = "cargo-wagon-mk2", subgroup = "train-transport", order = "a[train-system]-g[cargo-wagon]-b", itype = "item-with-entity-data", tint = Colors.tier1},
    {source = "cargo-wagon", name = "cargo-wagon-mk3", subgroup = "train-transport", order = "a[train-system]-g[cargo-wagon]-c", itype = "item-with-entity-data", tint = Colors.tier2},
    {source = "cargo-wagon", name = "cargo-wagon-mk4", subgroup = "train-transport", order = "a[train-system]-g[cargo-wagon]-d", itype = "item-with-entity-data", tint = Colors.tier3},
    {source = "locomotive",  name = "locomotive-mk2",  subgroup = "train-transport", order = "a[train-system]-f[locomotive]-b",  itype = "item-with-entity-data", tint = Colors.tier1},
    {source = "locomotive",  name = "locomotive-mk3",  subgroup = "train-transport", order = "a[train-system]-f[locomotive]-c",  itype = "item-with-entity-data", tint = Colors.tier2},
    {source = "locomotive",  name = "locomotive-mk4",  subgroup = "train-transport", order = "a[train-system]-f[locomotive]-d",  itype = "item-with-entity-data", tint = Colors.tier3},
    {source = "fluid-wagon", name = "fluid-wagon-mk2", subgroup = "train-transport", order = "a[train-system]-h[fluid-wagon]-b", itype = "item-with-entity-data", tint = Colors.tier1},
    {source = "fluid-wagon", name = "fluid-wagon-mk3", subgroup = "train-transport", order = "a[train-system]-h[fluid-wagon]-c", itype = "item-with-entity-data", tint = Colors.tier2},
    {source = "fluid-wagon", name = "fluid-wagon-mk4", subgroup = "train-transport", order = "a[train-system]-h[fluid-wagon]-d", itype = "item-with-entity-data", tint = Colors.tier3}
}

for _, item in pairs(items) do
    extendItems(item.source, item.name, item.subgroup, item.order, item.itype, item.tint)
end
