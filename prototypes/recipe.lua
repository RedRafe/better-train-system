data:extend({
  -- Cargo Wagons
  {
    type = 'recipe',
    energy_required = 8,
    name = 'cargo-wagon-mk2',
    enabled = false,
    ingredients = {
      { type = 'item', name = 'cargo-wagon', amount = 1 },
      { type = 'item', name = 'iron-gear-wheel', amount = 30 },
      { type = 'item', name = 'iron-plate', amount = 40 },
      { type = 'item', name = 'steel-plate', amount = 20 },
      { type = 'item', name = 'electronic-circuit', amount = 20 },
    },
    results = {{ type = 'item', name = 'cargo-wagon-mk2', amount = 1 }},
  },
  {
    type = 'recipe',
    energy_required = 16,
    name = 'cargo-wagon-mk3',
    enabled = false,
    ingredients = {
      { type = 'item', name = 'cargo-wagon-mk2', amount = 1 },
      { type = 'item', name = 'steel-plate', amount = 100 },
      { type = 'item', name = 'advanced-circuit', amount = 25 },
    },
    results = {{ type = 'item', name = 'cargo-wagon-mk3', amount = 1 }},
  },
  {
    type = 'recipe',
    energy_required = 32,
    name = 'cargo-wagon-mk4',
    enabled = false,
    ingredients = {
      { type = 'item', name = 'cargo-wagon-mk3', amount = 1 },
      { type = 'item', name = 'steel-plate', amount = 200 },
      { type = 'item', name = 'processing-unit', amount = 50 },
    },
    results = {{ type = 'item', name = 'cargo-wagon-mk4', amount = 1 }},
  },
  -- Locomotives
  {
    type = 'recipe',
    name = 'locomotive-mk2',
    energy_required = 16,
    enabled = false,
    ingredients = {
      { type = 'item', name = 'locomotive', amount = 1 },
      { type = 'item', name = 'engine-unit', amount = 40 },
      { type = 'item', name = 'electronic-circuit', amount = 40 },
      { type = 'item', name = 'iron-plate', amount = 50 },
    },
    results = {{ type = 'item', name = 'locomotive-mk2', amount = 1 }},
  },
  {
    type = 'recipe',
    name = 'locomotive-mk3',
    energy_required = 60,
    enabled = false,
    ingredients = {
      { type = 'item', name = 'locomotive-mk2', amount = 1 },
      { type = 'item', name = 'electric-engine-unit', amount = 20 },
      { type = 'item', name = 'advanced-circuit', amount = 40 },
      { type = 'item', name = 'steel-plate', amount = 100 },
    },
    results = {{ type = 'item', name = 'locomotive-mk3', amount = 1 }},
  },
  {
    type = 'recipe',
    name = 'locomotive-mk4',
    energy_required = 120,
    enabled = false,
    ingredients = {
      { type = 'item', name = 'locomotive-mk3', amount = 1 },
      { type = 'item', name = 'electric-engine-unit', amount = 40 },
      { type = 'item', name = 'processing-unit', amount = 50 },
      { type = 'item', name = 'steel-plate', amount = 200 },
    },
    results = {{ type = 'item', name = 'locomotive-mk4', amount = 1 }},
  },
  -- Fluid Wagons
  {
    type = 'recipe',
    name = 'fluid-wagon-mk2',
    enabled = false,
    energy_required = 12,
    ingredients = {
      { type = 'item', name = 'iron-plate', amount = 50 },
      { type = 'item', name = 'pipe', amount = 20 },
      { type = 'item', name = 'fluid-wagon', amount = 1 },
      { type = 'item', name = 'storage-tank', amount = 3 },
    },
    results = {{ type = 'item', name = 'fluid-wagon-mk2', amount = 1 }},
  },
  {
    type = 'recipe',
    name = 'fluid-wagon-mk3',
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = 'item', name = 'iron-plate', amount = 100 },
      { type = 'item', name = 'steel-plate', amount = 100 },
      { type = 'item', name = 'pipe', amount = 50 },
      { type = 'item', name = 'fluid-wagon-mk2', amount = 1 },
      { type = 'item', name = 'storage-tank', amount = 6 },
    },
    results = {{ type = 'item', name = 'fluid-wagon-mk3', amount = 1 }},
  },
  {
    type = 'recipe',
    name = 'fluid-wagon-mk4',
    enabled = false,
    energy_required = 60,
    ingredients = {
      { type = 'item', name = 'steel-plate', amount = 200 },
      { type = 'item', name = 'pipe', amount = 80 },
      { type = 'item', name = 'fluid-wagon-mk3', amount = 1 },
      { type = 'item', name = 'storage-tank', amount = 10 },
    },
    results = {{ type = 'item', name = 'fluid-wagon-mk4', amount = 1 }},
  },
})
