// Create Event for obj_animal

// Enumeration for various properties
enum Species { Deer, Rabbit, Fox, Bear }
enum DietType { Herbivore, Omnivore, Carnivore }
enum LifeStage { Baby, Adult, Elder }
enum AnimalState { Idle, Moving, Eating, Sleeping, Fleeing, SeekingWater, SeekingMate }

// Basic properties
species = irandom_range(Species.Deer, Species.Bear);
diet_type = DietType.Herbivore;
animal_health = 100;
energy = 100;
age = 0;
life_stage = LifeStage.Baby;
adult_age = 20;
elder_age = 60;
max_age = 80;
hunger = 0;
thirst = 0;
reproduction_ready = false;
last_reproduction_cycle = -1;
current_state = AnimalState.Idle;
flee_speed = 2;

// Movement and jumping properties
move_speed = 4;
vertical_speed = 0;
world_gravity = 0.2;
jump_strength = 5;
can_jump = true;
original_hspd = 0;

// Initialize horizontal speed
hspd = 0;

// Initialize facing direction
facing_right = true;

// Additional movement and behavior properties
fear_level = 0;
mate_desire_level = 0;
in_water = false;
is_on_ground = true;
target = noone;

// Genetic traits
genetic_traits = ds_map_create();
genetic_traits[? "speed"] = irandom_range(3, 7);
genetic_traits[? "strength"] = irandom_range(2, 6);
genetic_traits[? "vision"] = irandom_range(2, 5);
genetic_traits[? "fertility"] = irandom_range(1, 4);
genetic_traits[? "lifespan"] = irandom_range(50, 100);

// Appearance traits
appearance_traits = ds_map_create();
appearance_traits[? "fur_color"] = make_color_rgb(irandom(255), irandom(255), irandom(255));
appearance_traits[? "size"] = irandom_range(.1, 2);

sleep_spot_threshold = 5;

// Dynamically initialize the height based on the current sprite of obj_animal
obj_animal_height = sprite_get_height(sprite_index);


// Collision properties (uncomment and customize if needed)
// collision_objects = ds_list_create();
