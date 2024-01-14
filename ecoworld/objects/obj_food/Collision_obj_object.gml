// Collision Event in obj_food

var collided_object = other;

switch (collided_object.object_index) {
    case obj_animal:
        // Food interacts with animal
        // Usually, the food will be consumed, so you might handle this in the animal's collision event instead
        break;

    case obj_terrain:
         // Place food on top of the terrain
		 y = collided_object.y - sprite_height / 2; // Position food on terrain
		 // Additional logic if needed (e.g., stop movement)
        break;
}
