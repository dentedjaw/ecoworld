// Draw Event for obj_plant

// Determine the visual representation based on plant type and growth stage
switch (plant_type) {
    case PlantType.Grass:
        // Draw grass - multiple blades to represent fuller growth
        for (var i = 0; i < growth_stage * 10; i++) {
            var grass_x = x + random_range(-5, 5);
            var grass_y = y - growth_stage * 2; // Blades grow taller with growth stage
            draw_sprite(leaf_sprite, 0, grass_x, grass_y);
        }
        break;

    case PlantType.Bush:
        // Draw bush - size increases with growth stage, fruits appear when mature
        draw_sprite(bush_sprite, growth_stage, x, y);
        if (reproduction_ready) {
            draw_sprite(fruit_sprite, 0, x, y); // Draw fruits on mature bushes
        }
        break;

    case PlantType.Fern:
        // Draw fern - fronds spread out more with growth
        for (var i = 0; i < growth_stage * 5; i++) {
            var fern_x = x + random_range(-15, 15);
            var fern_y = y - growth_stage * 3;
            draw_sprite(leaf_sprite, 0, fern_x, fern_y);
        }
        break;

    case PlantType.Tree:
        // Draw tree - trunk height and leaf quantity increase with growth
        var tree_height = 20 + growth_stage * 10;
        draw_sprite(trunk_sprite, 0, x, y - tree_height);
        for (var i = 0; i < growth_stage * 20; i++) {
            var leaf_x = x + random_range(-20, 20);
            var leaf_y = y - tree_height + random_range(-20, 20);
            draw_sprite(leaf_sprite, 0, leaf_x, leaf_y);
        }
        if (reproduction_ready) {
            draw_sprite(fruit_sprite, 0, x, y - tree_height); // Draw fruits on mature trees
        }
        break;

    case PlantType.Succulent:
        // Draw succulent - size and density of leaves increase with growth
        var succulent_size = 1 + growth_stage * 0.2; // Increase size with growth
        draw_sprite_ext(succulent_sprite, 0, x, y, succulent_size, succulent_size, 0, c_white, 1);
        break;
}
