data:extend(
    {
        {
            type = "recipe",
            energy_required = 8,
            name = "cargo-wagon-mk2",
            enabled = false,
            ingredients = {
                {"cargo-wagon", 1},
                {"iron-gear-wheel", 30},
                {"iron-plate", 40},
                {"steel-plate", 20},
                {"electronic-circuit", 20}
            },
            result = "cargo-wagon-mk2"
        },
        {
            type = "recipe",
            energy_required = 16,
            name = "cargo-wagon-mk3",
            enabled = false,
            ingredients = {
                {"cargo-wagon-mk2", 2},
                {"steel-plate", 100},
                {"advanced-circuit", 25}
            },
            result = "cargo-wagon-mk3"
        },
        {
          type = "recipe",
          energy_required = 32,
          name = "cargo-wagon-mk4",
          enabled = false,
          ingredients = {
              {"cargo-wagon-mk3", 2},
              {"steel-plate", 200},
              {"processing-unit", 50}
          },
          result = "cargo-wagon-mk4"
      },
        {
            type = "recipe",
            name = "locomotive-mk2",
            energy_required = 16,
            enabled = false,
            ingredients = {
                {"locomotive", 1},
                {"engine-unit", 40},
                {"electronic-circuit", 40},
                {"iron-plate", 50}
            },
            result = "locomotive-mk2"
        },
        {
            type = "recipe",
            name = "locomotive-mk3",
            energy_required = 60,
            enabled = false,
            ingredients = {
                {"locomotive-mk2", 2},
                {"electric-engine-unit", 20},
                {"advanced-circuit", 40},
                {"steel-plate", 100}
            },
            result = "locomotive-mk3"
        },
        {
          type = "recipe",
          name = "locomotive-mk4",
          energy_required = 120,
          enabled = false,
          ingredients = {
              {"locomotive-mk3", 2},
              {"electric-engine-unit", 40},
              {"processing-unit", 50},
              {"steel-plate", 200}
          },
          result = "locomotive-mk4"
      },
        {
            type = "recipe",
            name = "fluid-wagon-mk2",
            enabled = false,
            energy_required = 12,
            ingredients = {
                {"iron-plate", 50},
                {"pipe", 20},
                {"fluid-wagon", 2},
                {"storage-tank", 3}
            },
            result = "fluid-wagon-mk2"
        },
        {
            type = "recipe",
            name = "fluid-wagon-mk3",
            enabled = false,
            energy_required = 30,
            ingredients = {
                {"iron-plate", 100},
                {"steel-plate", 100},
                {"pipe", 50},
                {"fluid-wagon-mk2", 2},
                {"storage-tank", 6}
            },
            result = "fluid-wagon-mk3"
        },
        {
          type = "recipe",
          name = "fluid-wagon-mk4",
          enabled = false,
          energy_required = 60,
          ingredients = {
              {"steel-plate", 200},
              {"pipe", 80},
              {"fluid-wagon-mk3", 2},
              {"storage-tank", 10}
          },
          result = "fluid-wagon-mk4"
      }
    }
)
