function look_around() {
    if (irandom_range(0, 100) < 20) {
        var original_speed = hspd;
        hspd = 0;

        var look_duration = irandom_range(30, 120);
        if (irandom(1) == 0) {
            facing_right = !facing_right;
        }

        alarm[1] = look_duration;
        alarm_set(1, function() {
            hspd = original_speed;
        });
    }
}
