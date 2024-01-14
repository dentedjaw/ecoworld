// Collision Event in obj_terrain

var collided_object = other;

switch (collided_object.object_index) {
    case obj_animal:
        // Terrain interacts with animal
        // Example: might affect the animal's movement or behavior
        break;

    case obj_plant:
        // Terrain interacts with plant
        // Example: affects plant's growth or health
        break;
}
