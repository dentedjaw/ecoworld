function perform_idle_behavior() {
    if (irandom_range(0, 1000) < 5) {
        current_state = AnimalState.Moving;
    }
    // Additional idle behaviors
    perform_random_grooming();
    look_around();
}
