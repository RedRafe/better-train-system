--local Constant = require("constant")

local function CloneWithTint(source, name, subgroup, order, tint, icon_name, itype)
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
    {source = "cargo-wagon", name = "cargo-wagon-mk2", subgroup = "train-transport", order = "a[train-system]-g[cargo-wagon]-b", itype = "item-with-entity-data"},
    {source = "cargo-wagon", name = "cargo-wagon-mk3", subgroup = "train-transport", order = "a[train-system]-g[cargo-wagon]-c", itype = "item-with-entity-data"},
    {source = "cargo-wagon", name = "cargo-wagon-mk4", subgroup = "train-transport", order = "a[train-system]-g[cargo-wagon]-d", itype = "item-with-entity-data"},
    {source = "locomotive", name = "locomotive-mk2", subgroup = "train-transport", order = "a[train-system]-f[locomotive]-b", itype = "item-with-entity-data"},
    {source = "locomotive", name = "locomotive-mk3", subgroup = "train-transport", order = "a[train-system]-f[locomotive]-c", itype = "item-with-entity-data"},
    {source = "locomotive", name = "locomotive-mk4", subgroup = "train-transport", order = "a[train-system]-f[locomotive]-d", itype = "item-with-entity-data"},
    {source = "fluid-wagon", name = "fluid-wagon-mk2", subgroup = "train-transport", order = "a[train-system]-h[fluid-wagon]-b", itype = "item-with-entity-data"},
    {source = "fluid-wagon", name = "fluid-wagon-mk3", subgroup = "train-transport", order = "a[train-system]-h[fluid-wagon]-c", itype = "item-with-entity-data"},
    {source = "fluid-wagon", name = "fluid-wagon-mk4", subgroup = "train-transport", order = "a[train-system]-h[fluid-wagon]-d", itype = "item-with-entity-data"}
}

for _, item in pairs(items) do
    CloneWithTint(item.source, item.name, item.subgroup, item.order, item.tint, item.icon_name, item.itype)
end
