// Draw Event for obj_terrain

// Draw the appropriate sprite based on the current terrain type
switch (terrain_type) {
    case TerrainType.Dirt:
        draw_sprite(spr_dirt, 0, x, y);
        break;
    case TerrainType.Rock:
        draw_sprite(spr_rock, 0, x, y);
        break;
    case TerrainType.Mud:
        draw_sprite(spr_mud, 0, x, y);
        break;
    case TerrainType.Clay:
        draw_sprite(spr_clay, 0, x, y);
        break;
    case TerrainType.Sand:
        draw_sprite(spr_sand, 0, x, y);
        break;
    // Add drawing logic for additional terrain types
}

// Additional rendering effects or modifications can be added here
