// Create Event for obj_terrain

// Define enum for terrain types including real-world types
enum TerrainType { Dirt, Water, Rock, Mud, Clay, Sand }

is_safe_for_sleeping = true; // or false, depending on the terrain type
is_water = false;
// Set default terrain type, which can be dynamically set based on level design or game logic
terrain_type = TerrainType.Dirt;

// Initialize properties based on terrain type
switch (terrain_type) {
    case TerrainType.Dirt:
        sprite_index = spr_dirt; // Assign sprite for dirt
        is_walkable = true;
        growth_support = true; // Supports plant growth
        break;

    case TerrainType.Rock:
        sprite_index = spr_rock; // Assign sprite for rock
        is_walkable = true;
        growth_support = false;
        break;

    case TerrainType.Mud:
        sprite_index = spr_mud; // Assign sprite for mud
        is_walkable = false;
        growth_support = false;
        break;

    case TerrainType.Clay:
        sprite_index = spr_clay; // Assign sprite for clay
        is_walkable = true;
        growth_support = true; // Clay can be fertile
        break;

    case TerrainType.Sand:
        sprite_index = spr_sand; // Assign sprite for sand
        is_walkable = true;
        growth_support = false; // Sand is typically infertile
        break;

    // Add more cases for any additional terrain types
}
