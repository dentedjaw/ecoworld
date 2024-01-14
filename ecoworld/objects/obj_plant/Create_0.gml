// Create Event for obj_plant

enum PlantType { Grass, Bush, Fern, Tree, Succulent }
enum ReproductionMethod { Seeds, Spores, Fruits, Pinecones, Nuts }

plant_type = PlantType.Grass;
plant_health = 100; // Renamed from 'health' to 'plant_health'
growth_stage = 0;
max_growth_stage = 5;
water_level = 50;
sunlight_level = 50;
water_storage_capacity = 50; // Default water storage capacity
drought_resistance = false;

reproduction_method = ReproductionMethod.Seeds;
reproduction_ready = false;

preferred_temperature_range = ds_map_create();
preferred_temperature_range[? "min"] = 10;
preferred_temperature_range[? "max"] = 30;

// Genetic traits, including water storage capacity
genetic_traits = ds_map_create();
genetic_traits[? "growth_rate"] = random_range(0.1, 0.5);
genetic_traits[? "water_storage_capacity"] = water_storage_capacity;

// Appearance traits
leaf_sprite = spr_leaf_default;
fruit_sprite = undefined;

// Adjust properties for specific plant types
if (plant_type == PlantType.Succulent) {
    water_storage_capacity = 100;
    drought_resistance = true;
    genetic_traits[? "water_storage_capacity"] = water_storage_capacity;
}
