function perform_eating_behavior() {
    var food = instance_nearest(x, y, obj_food);
    if (food != noone && distance_to_object(food) < eat_range) {
        x += sign(food.x - x) * genetic_traits[? "speed"];
        if (place_meeting(x, y, food)) {
            hunger = max(hunger - 20, 0); // Adjust as needed
            instance_destroy(food);
            alarm[0] = room_speed * 2; // 2-second delay before changing state
        }
    } else {
        current_state = AnimalState.Idle;
    }
}
