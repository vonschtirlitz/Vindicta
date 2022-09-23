[
    // Initial vehicle class name
    "CUP_I_Hilux_unarmed_TK",

    // This code will be called upon vehicle construction
    {
        params ["_veh"];
        [
        	_veh,
        	["White",1],
        	true
        ] call BIS_fnc_initVehicle;
    }
]
