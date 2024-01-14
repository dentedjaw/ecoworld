function perform_seeking_mate_behavior() {
    var mate = find_nearest_mate();
    if (mate != noone) {
        x += sign(mate.x - x) * genetic_traits[? "speed"];
        if (place_meeting(x, y, mate)) {
            perform_mating(); // Implement this for mating logic
        }
    } else {
        current_state = AnimalState.Idle;
    }
}
