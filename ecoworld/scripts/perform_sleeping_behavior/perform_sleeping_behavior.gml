function perform_sleeping_behavior() {
    // Begin by finding a safe place to sleep
    var safe_spot = find_nearest_safe_sleep_spot(); // Logic to find the nearest safe spot

    // Move towards the safe spot if not already there
    if (distance_to_point(safe_spot.x, safe_spot.y) > sleep_spot_threshold) {
        x += sign(safe_spot.x - x) * genetic_traits[? "speed"];
        y += sign(safe_spot.y - y) * genetic_traits[? "speed"];
    } else {
        // Sleep and recover energy
        energy += 5;
        if (energy >= 100 || irandom_range(0, 1000) < 5) {
            energy = min(energy, 100);
            current_state = AnimalState.Idle;
        }
    }
}

function find_nearest_safe_sleep_spot() {
    // Logic to find the nearest safe location for sleeping
    // This is a simplified example and should be tailored to your game's environment
    var nearest_safe_spot = noone;
    var min_distance = 1; // A large number
    with (obj_terrain) {
        if (is_safe_for_sleeping && distance_to_object(other) < min_distance) {
            min_distance = distance_to_object(other);
            nearest_safe_spot = id;
        }
    }
    return nearest_safe_spot;
}
