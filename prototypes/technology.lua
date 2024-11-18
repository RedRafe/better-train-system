data:extend({
  {
    type = "technology",
    name = "railway-2",
    icon_size = 256,
    icon = bts.path_g .. "railway-t1.png",
    prerequisites = {"automated-rail-transportation"},
    effects = 
    {
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "locomotive-mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-mk2"
      }
    },
    unit = 
    {
      count = 300,
      ingredients = 
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "c-g-b"
  },
  {
    type = "technology",
    name = "railway-3",
    icon_size = 256,
    icon = bts.path_g .. "railway-t2.png",
    prerequisites = {"railway-2", "advanced-circuit"},
    effects = 
    {
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-mk3"
      },
      {
        type = "unlock-recipe",
        recipe = "locomotive-mk3"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-mk3"
      }
    },
    unit = 
    {
      count = 400,
      ingredients = 
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
    order = "c-g-c"
  },
  {
    type = "technology",
    name = "railway-4",
    icon_size = 256,
    icon = bts.path_g .. "railway-t3.png",
    prerequisites = {"railway-3", "processing-unit"},
    effects = 
    {
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-mk4"
      },
      {
        type = "unlock-recipe",
        recipe = "locomotive-mk4"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-mk4"
      }
    },
    unit = 
    {
      count = 500,
      ingredients = 
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    order = "c-g-c"
  }
})
