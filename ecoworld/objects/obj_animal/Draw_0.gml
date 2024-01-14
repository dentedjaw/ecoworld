// Draw Event for obj_animal

// Determine the direction to face based on horizontal movement
var sprite_x_scale = facing_right ? -1 : 1;

// Select and draw the appropriate sprite based on the species
switch (species) {
    case Species.Deer:
        draw_sprite_ext(spr_deer, 0, x, y, appearance_traits[? "size"] * sprite_x_scale, appearance_traits[? "size"], 0, appearance_traits[? "fur_color"], 1);
        break;
    case Species.Rabbit:
        draw_sprite_ext(spr_rabbit, 0, x, y, appearance_traits[? "size"] * sprite_x_scale, appearance_traits[? "size"], 0, appearance_traits[? "fur_color"], 1);
        break;
    case Species.Fox:
        draw_sprite_ext(spr_fox, 0, x, y, appearance_traits[? "size"] * sprite_x_scale, appearance_traits[? "size"], 0, appearance_traits[? "fur_color"], 1);
        break;
    case Species.Bear:
        draw_sprite_ext(spr_bear, 0, x, y, appearance_traits[? "size"] * sprite_x_scale, appearance_traits[? "size"], 0, appearance_traits[? "fur_color"], 1);
        break;
}

// You can add additional drawing code here if needed
// For example, drawing health bars, status effects, etc.
