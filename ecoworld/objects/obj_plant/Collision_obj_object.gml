// Collision Event in obj_plant

var collided_object = other;

switch (collided_object.object_index) {
    case obj_animal:
        // Plant interacts with animal
        // Example: being eaten or affected by the animal
        plant_health -= 10; // Example: reduce plant health
        break;

    case obj_terrain:
        // Adjust plant's position to be on top of the terrain
		y = collided_object.y - sprite_height / 2; // Position plant on terrain
        break;
}
