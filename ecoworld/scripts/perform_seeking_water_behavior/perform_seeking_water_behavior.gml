function perform_seeking_water_behavior() {
    var water_source = instance_nearest(x, y, obj_water);
    if (water_source != noone) {
        x += sign(water_source.x - x) * genetic_traits[? "speed"];
    }
    if (distance_to_object(water_source) < water_threshold) {
        thirst = 0;
        current_state = AnimalState.Idle;
    }
}
