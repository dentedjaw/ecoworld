function perform_movement_behavior() {
    horizontal_speed = genetic_traits[? "speed"] * choose(-1, 1);
    x += horizontal_speed;
    check_environment_interaction(); // Check and react to environment

    if (irandom_range(0, 1000) < 5) {
        current_state = AnimalState.Idle;
    }
}
