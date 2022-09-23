[
    // Initial vehicle class name
    "CUP_B_nM1025_SOV_M2_USA_DES",

    // This code will be called upon vehicle construction
    {
        params ["_veh"];
        [
        	_veh,
          ["USDesert",1],
        	["hide_front_left_antenna",0,"hide_front_right_antenna",0,"hide_rear_left_antenna",0,"hide_rear_right_antenna",0,"hide_left_mirror",0,"hide_right_mirror",0,"hide_brushguard",1,"hide_blue_force_tracker",1,"hide_jerrycans",0,"hide_spare_wheel",1,"hide_spare_wheel_mount",1,"hide_door_front_left",0,"hide_door_front_right",0,"hide_door_rear_left",0,"hide_door_rear_right",0,"hide_cip",1,"hide_rear_view_camera",1,"hide_radio_small",1,"hide_radio_large",0,"hide_old_front_bumper",1,"hide_old_rear_bumper",1,"hide_rear_tarp_roll",0,"hide_rear_rack_content",0,"hide_rear_rack",0,"hide_backpacks",0]
        ] call BIS_fnc_initVehicle;
    }
]
