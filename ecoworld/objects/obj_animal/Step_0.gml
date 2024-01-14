// Step Event for obj_animal

// Apply world gravity
vertical_speed += world_gravity;

// Update the animal's position based on horizontal and vertical speeds
x += hspd;
y += vertical_speed;

// Update facing direction based on horizontal speed
if (hspd != 0) {
    facing_right = (hspd > 0);
}

// State machine handling
switch (current_state) {
    case AnimalState.Idle:
        // Idle behavior
        perform_idle_behavior();
        break;

    case AnimalState.Moving:
        // Movement logic
        perform_movement_behavior();
        hspd = (facing_right) ? move_speed : -move_speed;
        break;

    case AnimalState.Eating:
        // Eating behavior
        perform_eating_behavior();
        break;

    case AnimalState.Sleeping:
        // Sleeping behavior
        perform_sleeping_behavior();
        break;

    case AnimalState.Fleeing:
        // Fleeing from predators or dangers
        perform_fleeing_behavior();
        hspd = (facing_right) ? flee_speed : -flee_speed;
        break;

    case AnimalState.SeekingWater:
        // Seeking water sources if thirsty
        perform_seeking_water_behavior();
        break;

    case AnimalState.SeekingMate:
        // Seeking a mate for reproduction
        perform_seeking_mate_behavior();
        break;
}

// Handle interactions with other objects like food, water, terrain, etc.
// Example: Collisions with obj_food
if (place_meeting(x, y, obj_food)) {
    var food = instance_place(x, y, obj_food);
    // Implement logic based on food type and animal's diet
    // ...
}

// Age, health, energy, hunger, and thirst management
age += global.animalMetabolismScale;
if (age >= max_age) {
   // instance_destroy(); // Animal dies of old age
}
energy -= 0.1 * global.animalMetabolismScale;
if (energy <= 0) {
    animal_health -= 0.5 * global.animalMetabolismScale;
}
hunger += 0.2 * global.animalMetabolismScale;
thirst += 0.2 * global.animalMetabolismScale;

// Additional logic as needed
// ...
