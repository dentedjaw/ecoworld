// Step Event for obj_terrain

// Respond to environmental conditions like weather
if (global.current_weather == "rainy") {
    // Change conditions based on terrain type and weather
    if (terrain_type == TerrainType.Dirt && !instance_exists(obj_plant)) {
        terrain_type = TerrainType.Mud;
        sprite_index = spr_mud;
        is_walkable = false;
    }
    if (terrain_type == TerrainType.Sand) {
        // Sand might become compact and harder in rain
    }
    // Add logic for other terrain types under rainy conditions
} else if (global.current_weather == "sunny" || global.current_weather == "clear") {
    // Change conditions back or to other states when sunny or clear
    if (terrain_type == TerrainType.Mud) {
        terrain_type = TerrainType.Dirt;
        sprite_index = spr_dirt;
        is_walkable = true;
    }
    // Add logic for other terrain types under sunny conditions
}

// Additional logic for other weather conditions and terrain types
