// Draw Event for obj_animal

// Determine the direction to face based on horizontal movement
var sprite_x_scale = facing_right ? -1 : 1;

// Select appropriate sprites and effects based on animal's state and conditions
var body_sprite, tail_sprite, ear_sprite, mouth_sprite;
switch (species) {
    case Species.Deer:
        body_sprite = spr_deer_body;
        tail_sprite = spr_deer_tail;
        ear_sprite = spr_deer_ear;
        // Additional species-specific sprites
        break;
    // Handle other species similarly
}

// Handle mouth sprite based on eating state
mouth_sprite = (current_state == AnimalState.Eating) ? spr_mouth_chew : spr_normal_mouth;

// Draw body parts and apply color transformations based on appearance traits
draw_sprite_ext(body_sprite, 0, x, y, appearance_traits[? "size"] * sprite_x_scale, appearance_traits[? "size"], 0, appearance_traits[? "fur_color"], 1);
draw_sprite_ext(tail_sprite, 0, x, y, sprite_x_scale, 1, 0, c_white, 1);
draw_sprite_ext(ear_sprite, 0, x, y, sprite_x_scale, 1, 0, c_white, 1);
draw_sprite_ext(mouth_sprite, 0, x, y, sprite_x_scale, 1, 0, c_white, 1);

// Add additional drawing code for special states and effects
if (comfort > 400) {
    // Draw fire or steam effect based on rain
    var effect_sprite = obj_rain.rain_started ? spr_steam : spr_fire;
    draw_sprite_ext(effect_sprite, 0, x, y, 1, 1, 0, c_white, 1);
}
if (global.selected == id) {
    // Highlight animal if selected
    draw_sprite_ext(spr_selected_effect, 0, x, y, 1, 1, 0, selected_color2, 1);
}

// Additional effects and emotes
// ...

// Check for special states like sleeping or being a king
if (sleep || youth_iq_level <= 5 || !alive) {
draw_sprite_ext(spr_sleep, 0, x, y, sprite_x_scale, 1, 0, sprite_body_color, 1);
} else if (king) {
draw_sprite_ext(spr_crown, 0, x, y, sprite_x_scale, 1, 0, c_gold, 1);
}

// Implement emotional expressions and looking up
// ...

// Finalize with any additional animations or emotes
scr_emotes();

// Optionally, add a GUI layer if needed
if (global.guion) {
// Draw GUI elements
// ...
}