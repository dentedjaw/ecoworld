// Collision Event for obj_animal with obj_object

// Get the instance of the collided object
var collided_object = instance_place(x, y, obj_object);

// Check if the collision is with a valid object
if (collided_object != noone) {
    switch (collided_object.object_index) {
        case obj_plant:
            // Handle collision with plant
            if ((diet_type == DietType.Herbivore || diet_type == DietType.Omnivore) && current_state == AnimalState.Eating) {
                hunger = max(hunger - 10, 0);
                collided_object.health -= 10; // Assuming plant has 'health' attribute
                if (collided_object.health <= 0) {
                    instance_destroy(collided_object);
                }
            }
            break;

        case obj_food:
            // Handle collision with food
            if ((collided_object.object_index == obj_meat && (diet_type == DietType.Omnivore || diet_type == DietType.Carnivore)) ||
                (collided_object.object_index == obj_fruit && (diet_type == DietType.Omnivore || diet_type == DietType.Herbivore))) {
                hunger = max(hunger - 20, 0);
                instance_destroy(collided_object);
                current_state = AnimalState.Idle;
            }
            break;

        // Add cases for other object types as necessary
        // ...

    }
}
