local reactoritem = util.table.deepcopy(data.raw["item"]["fusion-reactor-equipment"])
reactoritem.name = "m-fozzy-fusion-reactor-equipment"
reactoritem.placed_as_equipment_result = "m-fozzy-fusion-reactor-equipment"
reactoritem.order = "a[energy-source]-c[m-fozzy-fusion-reactor-equipment]"
data:extend{reactoritem}

local shielditem = util.table.deepcopy(data.raw["item"]["energy-shield-mk2-equipment"])
shielditem.name = "m-super-shield-equipment"
shielditem.placed_as_equipment_result = "m-super-shield-equipment"
shielditem.order = "b[shield]-c[m-super-shield-equipment]"
data:extend{shielditem}

local batteryitem = util.table.deepcopy(data.raw["item"]["battery-mk2-equipment"])
batteryitem.name = "m-bunny-battery-equipment"
batteryitem.placed_as_equipment_result = "m-bunny-battery-equipment"
batteryitem.order = "c[battery]-c[m-bunny-battery-equipment]"
data:extend{batteryitem}

local plditem = util.table.deepcopy(data.raw["item"]["personal-laser-defense-equipment"])
plditem.name = "m-hot-personal-laser-defense-equipment"
plditem.placed_as_equipment_result = "m-hot-personal-laser-defense-equipment"
plditem.order = "d[active-defense]-aa[m-hot-personal-laser-defense-equipment]"
data:extend{plditem}

local exoitem = util.table.deepcopy(data.raw["item"]["exoskeleton-equipment"])
exoitem.name = "m-speed-boots-equipment"
exoitem.placed_as_equipment_result = "m-speed-boots-equipment"
exoitem.order = "e[exoskeleton]-b[m-speed-boots-equipment]"
data:extend{exoitem}

local personalroboitem = util.table.deepcopy(data.raw["item"]["personal-roboport-equipment"])
personalroboitem.name = "m-cozy-personal-roboport-equipment"
personalroboitem.placed_as_equipment_result = "m-cozy-personal-roboport-equipment"
personalroboitem.order = "e[robotics]-b[m-cozy-personal-roboport-equipment]"
data:extend{personalroboitem}




local reactorequipment = util.table.deepcopy(data.raw["generator-equipment"]["fusion-reactor-equipment"])
reactorequipment.name = "m-fozzy-fusion-reactor-equipment"
reactorequipment.shape = {
    width = 2,
    height = 2,
    type = "full"
}
reactorequipment.power = "37500kW" -- "750kW"    x 50
data:extend{reactorequipment}

local shieldequipment = util.table.deepcopy(data.raw["energy-shield-equipment"]["energy-shield-mk2-equipment"])
shieldequipment.name = "m-super-shield-equipment"
shieldequipment.shape = {
    width = 1,
    height = 1,
    type = "full"
}
shieldequipment.max_shield_value = shieldequipment.max_shield_value * 4
data:extend{shieldequipment}

local batteryequipment = util.table.deepcopy(data.raw["battery-equipment"]["battery-mk2-equipment"])
batteryequipment.name = "m-bunny-battery-equipment"
batteryequipment.shape = {
    width = 2,
    height = 4,
    type = "full"
}
batteryequipment.energy_source = { -- * 25
    type = "electric",
    buffer_capacity = "2500MJ",
    input_flow_limit = "25GW",
    output_flow_limit = "25GW",
    usage_priority = "terciary"
}
data:extend{batteryequipment}

local pldequipment = util.table.deepcopy(data.raw["active-defense-equipment"]["personal-laser-defense-equipment"])
pldequipment.name = "m-hot-personal-laser-defense-equipment"
pldequipment.shape = {
    width = 4,
    height = 6,
    type = "full"
}
pldequipment.attack_parameters = {
    type = "projectile",
    ammo_category = "electric",
    cooldown = 10, -- 20
    damage_modifier = 3, -- 1
    projectile_center = {0, 0},
    projectile_creation_distance = 0.6,
    range = 20, -- 15
    sound = make_laser_sounds(),
    ammo_type =
    {
      type = "projectile",
      category = "electric",
      energy_consumption = "100kJ", -- "100kJ"
      projectile = "laser",
      speed = 2, -- 1
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "projectile",
              projectile = "laser",
              starting_speed = 0.28
            }
          }
        }
      }
    }
}
data:extend{pldequipment}

local exoequipment = util.table.deepcopy(data.raw["movement-bonus-equipment"]["exoskeleton-equipment"])
exoequipment.name = "m-speed-boots-equipment"
exoequipment.shape = {
    width = 1,
    height = 2,
    type = "full"
}
exoequipment.energy_consumption =  "700kW" -- "200kW"    x 3.5
exoequipment.movement_bonus = exoequipment.movement_bonus * 10
data:extend{exoequipment}

local personalroboequipment = util.table.deepcopy(data.raw["roboport-equipment"]["personal-roboport-equipment"])
personalroboequipment.name = "m-cozy-personal-roboport-equipment"
personalroboequipment.shape = {
    width = 1,
    height = 1,
    type = "full"
}
personalroboequipment.take_result = "m-cozy-personal-roboport-equipment"
personalroboequipment.energy_source = {
    type = "electric",
    buffer_capacity = "999MJ", -- "35MJ"
    input_flow_limit = "15MW", -- "3500KW"
    usage_priority = "secondary-input"
}
personalroboequipment.charging_energy = "5000kW" -- "1000kW"
personalroboequipment.robot_limit = personalroboequipment.robot_limit * 4
personalroboequipment.construction_radius = personalroboequipment.construction_radius * 2
personalroboequipment.charging_station_count = personalroboequipment.charging_station_count * 10 -- 20/40
data:extend{personalroboequipment}




local reactorrecipe = util.table.deepcopy(data.raw["recipe"]["fusion-reactor-equipment"])
reactorrecipe.name = "m-fozzy-fusion-reactor-equipment"
reactorrecipe.ingredients =
    {
      {"fusion-reactor-equipment", 50},
      {"steel-plate", 10}
    }
reactorrecipe.result = "m-fozzy-fusion-reactor-equipment"
data:extend{reactorrecipe}

local shieldrecipe = util.table.deepcopy(data.raw["recipe"]["energy-shield-mk2-equipment"])
shieldrecipe.name = "m-super-shield-equipment"
shieldrecipe.ingredients =
    {
      {"energy-shield-mk2-equipment", 4},
      {"steel-plate", 5}
    }
shieldrecipe.result = "m-super-shield-equipment"
data:extend{shieldrecipe}

local batteryrecipe = util.table.deepcopy(data.raw["recipe"]["battery-mk2-equipment"])
batteryrecipe.name = "m-bunny-battery-equipment"
batteryrecipe.ingredients =
    {
      {"battery-mk2-equipment", 25},
      {"steel-plate", 5}
    }
batteryrecipe.result = "m-bunny-battery-equipment"
data:extend{batteryrecipe}

local pldrecipe = util.table.deepcopy(data.raw["recipe"]["personal-laser-defense-equipment"])
pldrecipe.name = "m-hot-personal-laser-defense-equipment"
pldrecipe.ingredients =
    {
      {"personal-laser-defense-equipment", 10},
      {"steel-plate", 5}
    }
pldrecipe.result = "m-hot-personal-laser-defense-equipment"
data:extend{pldrecipe}

local exorecipe = util.table.deepcopy(data.raw["recipe"]["exoskeleton-equipment"])
exorecipe.name = "m-speed-boots-equipment"
exorecipe.ingredients =
    {
      {"exoskeleton-equipment", 10},
      {"steel-plate", 5}
    }
exorecipe.result = "m-speed-boots-equipment"
data:extend{exorecipe}

local personalroborecipe = util.table.deepcopy(data.raw["recipe"]["personal-roboport-equipment"])
personalroborecipe.name = "m-cozy-personal-roboport-equipment"
personalroborecipe.ingredients =
    {
      {"personal-roboport-equipment", 4},
      {"steel-plate", 5}
    }
personalroborecipe.result = "m-cozy-personal-roboport-equipment"
data:extend{personalroborecipe}



local improvedequipmenttech = util.table.deepcopy(data.raw["technology"]["fusion-reactor-equipment"])
improvedequipmenttech.name = "m-improved-equipment-tech"
improvedequipmenttech.icon = "__base__/graphics/technology/power-armor-mk2.png"
improvedequipmenttech.prerequisites = 
{
  "fusion-reactor-equipment",
  "energy-shield-mk2-equipment",
  "battery-mk2-equipment",
  "personal-laser-defense-equipment",
  "exoskeleton-equipment",
  "personal-roboport-equipment",
  "power-armor-2",
}
improvedequipmenttech.unit = {
    count = 300,
    ingredients =
    {
      {"science-pack-1", 1},
      {"science-pack-2", 1},
      {"science-pack-3", 1}
    },
    time = 30
  }
improvedequipmenttech.effects = {
    {
      type = "unlock-recipe",
      recipe = "m-fozzy-fusion-reactor-equipment"
    },
    {
      type = "unlock-recipe",
      recipe = "m-super-shield-equipment"
    },
    {
      type = "unlock-recipe",
      recipe = "m-bunny-battery-equipment"
    },
    {
      type = "unlock-recipe",
      recipe = "m-hot-personal-laser-defense-equipment"
    },
    {
      type = "unlock-recipe",
      recipe = "m-speed-boots-equipment"
    },
    {
      type = "unlock-recipe",
      recipe = "m-cozy-personal-roboport-equipment"
    },
    {
      type = "unlock-recipe",
      recipe = "m-soft-power-armor"
    },
  }
data:extend{improvedequipmenttech}



local armoritem = util.table.deepcopy(data.raw["armor"]["power-armor-mk2"])
armoritem.name = "m-soft-power-armor"
armoritem.order = "f[m-soft-power-armor]"
armoritem.resistances =
{
    {
      type = "physical",
      decrease = 15, -- 10
      percent = 60 -- 40
    },
    {
      type = "acid",
      decrease = 15, -- 10
      percent = 60 -- 40
    },
    {
      type = "explosion",
      decrease = 25, -- 20
      percent = 70 -- 50
    },
    {
      type = "fire",
      decrease = 0, -- 0
      percent = 95 -- 80
    }
}
armoritem.durability = armoritem.durability * 4
armoritem.equipment_grid = {width = 20, height = 20}
armoritem.inventory_size_bonus = armoritem.inventory_size_bonus * 2
data:extend{armoritem}



local armorrecipe = util.table.deepcopy(data.raw["recipe"]["power-armor-mk2"])
armorrecipe.name = "m-soft-power-armor"
armorrecipe.ingredients =
    {
      {"power-armor-mk2", 1},
      {"effectivity-module-3", 15}, 
      {"speed-module-3", 15}, 
      {"processing-unit", 120}, 
      {"steel-plate", 200}, 
      {"alien-artifact", 150},
    }
armorrecipe.result = "m-soft-power-armor"
data:extend{armorrecipe}