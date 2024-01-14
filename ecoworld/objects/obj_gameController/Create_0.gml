// Create Event for obj_gameController

// Define the possible weather conditions
enum Weather { Sunny, Rainy, Cloudy, Windy, Snowy }

// Set the default weather
global.current_weather = Weather.Sunny;

// Set a timer for weather change (example: every 600 steps, or 10 seconds at 60 FPS)
weather_change_timer = 6000; // Adjust as needed for your game's pacing

global.current_temperature = 20; // Set a default temperature value

global.animalMetabolismScale = 0.1; // Adjust this value as needed for your game's logic