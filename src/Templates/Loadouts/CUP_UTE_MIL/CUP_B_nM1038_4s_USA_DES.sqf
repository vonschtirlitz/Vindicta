[
    // Initial vehicle class name
    "CUP_B_nM1038_4s_USA_DES",

    // This code will be called upon vehicle construction
    {
        params ["_veh"];
        [
        _veh,
["USDesert",1],
["hide_rear_left_antenna",1,"hide_rear_right_antenna",0,"hide_left_mirror",0,"hide_right_mirror",0,"hide_brushguard",1,"hide_blue_force_tracker",1,"hide_jerrycans",1,"hide_spare_wheel",1,"hide_spare_wheel_mount",1,"hide_door_front_left",1,"hide_door_front_right",1,"hide_door_rear_left",1,"hide_door_rear_right",1,"hide_cip",1,"hide_rear_view_camera",1,"hide_radio_small",0,"hide_radio_large",1,"hide_old_front_bumper",1,"hide_old_rear_bumper",1,"hide_rear_tarp",1,"hide_rear_tarp_holder",1,"hide_middle_tarp",1,"hide_front_roof",1,"unhide_Deployment_1",1,"unhide_Deployment_2",0,"hide_roll_up_tarp",1]
        ] call BIS_fnc_initVehicle;
    }
]
