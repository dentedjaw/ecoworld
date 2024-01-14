function perform_fleeing_behavior() {
    var threat = find_nearest_threat();
    if (threat != noone) {
        horizontal_speed = flee_speed * sign(x - threat.x);
        x += horizontal_speed;
        avoid_obstacles(); // Implement this function for obstacle avoidance
    } else {
        current_state = AnimalState.Idle;
    }
}
