/*
CUP Takistani Army
*/

_array = [];

_array set [T_SIZE-1, nil];									//Make an array having the size equal to the number of categories first

// Name, description, faction, addons, etc
_array set [T_NAME, "tCUP_UTE"];
_array set [T_DESCRIPTION, "Post Operation Arrowhead withdrawal Takistani army, and mercenaries"];
_array set [T_DISPLAY_NAME, "CUP United Takistan Emirates"];
_array set [T_FACTION, T_FACTION_Military];
_array set [T_REQUIRED_ADDONS, [
	"CUP_Creatures_Military_Taki",	// CUP Units
	"CUP_Weapons_WeaponsCore",		// CUP Weapons
	"CUP_Vehicles_Core"			// CUP Vehicles
]];

//==== Infantry ====
_inf = [];
_inf resize T_INF_SIZE;
_inf set [T_INF_default, ["CUP_O_TK_Soldier_Backpack"]];

_inf set [T_INF_SL, ["CUP_O_TK_Soldier_SL"]];
_inf set [T_INF_TL, ["CUP_O_TK_Soldier_SL"]];
_inf set [T_INF_officer, ["CUP_O_TK_Story_Aziz"]];
_inf set [T_INF_GL, ["CUP_O_TK_Soldier_GL"]];
_inf set [T_INF_rifleman, ["CUP_O_TK_Soldier_Backpack"]];
_inf set [T_INF_marksman, ["CUP_O_TK_Sniper"]];
_inf set [T_INF_sniper, ["CUP_O_TK_Sniper_KSVK"]];
_inf set [T_INF_spotter, ["CUP_O_TK_Spotter"]];
_inf set [T_INF_exp, ["CUP_O_sla_Engineer"]];
//_inf set [T_INF_ammo, ["RHS_LDF_MG_2", "RHS_LDF_AT_2"]];
_inf set [T_INF_LAT, ["CUP_O_TK_Soldier_AT"]];
_inf set [T_INF_AT, ["CUP_O_TK_Soldier_HAT"]];
_inf set [T_INF_AA, ["CUP_O_TK_Soldier_AA"]];
_inf set [T_INF_LMG, ["CUP_O_TK_Soldier_AR"]];
_inf set [T_INF_HMG, ["CUP_O_TK_Soldier_MG"]];
_inf set [T_INF_medic, ["CUP_O_TK_Medic"]];
_inf set [T_INF_engineer, ["CUP_O_TK_Engineer"]];
_inf set [T_INF_crew, ["CUP_O_TK_Crew"]];
_inf set [T_INF_crew_heli, ["CUP_O_TK_Pilot"]];
_inf set [T_INF_pilot, ["CUP_O_TK_Pilot"]];
_inf set [T_INF_pilot_heli, ["CUP_O_TK_Pilot"]];
//_inf set [T_INF_survivor, ["CUP_O_sla_Soldier"]];
//_inf set [T_INF_unarmed, ["CUP_O_sla_Soldier"]];

// Recon
_inf set [T_INF_recon_TL, ["CUP_O_TK_SpecOps_TL"]];
_inf set [T_INF_recon_rifleman, ["CUP_O_TK_SpecOps"]];
_inf set [T_INF_recon_medic, ["CUP_O_TK_Medic"]];
_inf set [T_INF_recon_exp, ["CUP_O_TK_Soldier_Backpack"]];
_inf set [T_INF_recon_LAT, ["CUP_O_TK_Soldier_AT"]];
_inf set [T_INF_recon_marksman, ["CUP_O_TK_Sniper_KSVK"]];
_inf set [T_INF_recon_JTAC, ["CUP_O_TK_SpecOps"]];


// Divers, still vanilla
//_inf set [T_INF_diver_TL, ["B_diver_TL_F"]];
//_inf set [T_INF_diver_rifleman, ["B_diver_F"]];
//_inf set [T_INF_diver_exp, ["B_diver_exp_F"]];



//==== Vehicles ====
_veh = []; _veh resize T_VEH_SIZE;
_veh set [T_VEH_SIZE-1, nil];
_veh set [T_VEH_DEFAULT, ["CUP_I_Hilux_unarmed_TK"]];

_veh set [T_VEH_car_unarmed, ["CUP_I_Hilux_unarmed_TK","CUP_B_nM1038_4s_USA_DES"]];
_veh set [T_VEH_car_armed, ["CUP_B_nM1025_SOV_M2_USA_DES","CUP_O_LR_SPG9_TKA","CUP_I_Hilux_M2_TK"]];

_veh set [T_VEH_MRAP_unarmed, ["CUP_B_nM1025_M240_USA_DES", "CUP_B_nM1025_M2_USA_DES"]];
_veh set [T_VEH_MRAP_HMG, ["CUP_B_HMMWV_DSHKM_GPK_ACR","CUP_O_LR_MG_TKA","CUP_B_M1151_Deploy_USA"]];
_veh set [T_VEH_MRAP_GMG, ["CUP_B_HMMWV_AGS_GPK_ACR"]];

_veh set [T_VEH_IFV, ["CUP_O_BTR80_DESERT_RU", "CUP_I_M113A1_RACS", "CUP_O_BMP2_TKA", "CUP_I_LAV25M240_RACS"]];
_veh set [T_VEH_APC, ["CUP_B_RG31E_M2_USA", "CUP_B_RG31_M2_USA"]];
_veh set [T_VEH_MBT, ["CUP_O_T55_TK", "CUP_O_T72_TKA"]];
_veh set [T_VEH_MRLS, ["CUP_O_BM21_TKA"]];
//_veh set [T_VEH_SPA, ["rhsgref_cdf_2s1"]];
_veh set [T_VEH_SPAA, ["CUP_O_BMP2_ZU_TKA","CUP_O_Ural_ZU23_TKA"]];

_veh set [T_VEH_stat_HMG_high, ["CUP_B_M2StaticMG_US"]];
//_veh set [T_VEH_stat_GMG_high, [""]];
_veh set [T_VEH_stat_HMG_low, ["CUP_B_M2StaticMG_MiniTripod_US", "CUP_O_DSHKM_MiniTripod_SLA"]];
_veh set [T_VEH_stat_GMG_low, ["CUP_O_AGS_TK"]];
_veh set [T_VEH_stat_AA, ["CUP_O_Igla_AA_pod_TK", "CUP_O_ZU23_TK"]];
_veh set [T_VEH_stat_AT, ["CUP_O_Kornet_RU", "CUP_O_Metis_RU_M_MSV", "CUP_O_SPG9_SLA"]];

_veh set [T_VEH_stat_mortar_light, ["CUP_O_2b14_82mm_TK","CUP_B_M252_US"]];
_veh set [T_VEH_stat_mortar_heavy, ["CUP_B_M119_US"]];

_veh set [T_VEH_heli_light, ["CUP_O_UH1H_TKA","CUP_I_MH6J_RACS"]];
_veh set [T_VEH_heli_heavy, ["CUP_O_Mi17_TK"]];
//_veh set [T_VEH_heli_cargo, [""]];
_veh set [T_VEH_heli_attack, ["CUP_I_UH60L_RACS","CUP_O_UH1H_gunship_SLA_TKA"]];

_veh set [T_VEH_plane_attack, ["CUP_O_Su25_Dyn_TKA", "CUP_O_Su25_Dyn_TKA"]];
_veh set [T_VEH_plane_fighter, ["CUP_O_L39_TK"]];
//_veh set [T_VEH_plane_cargo, [""]];
//_veh set [T_VEH_plane_unarmed, ["RHS_AN2"]];
//_veh set [T_VEH_plane_VTOL, [""]];

_veh set [T_VEH_boat_unarmed, ["B_Boat_Transport_01_F", "I_C_Boat_Transport_02_F"]];
//_veh set [T_VEH_boat_armed, [""]];

_veh set [T_VEH_personal, ["B_Quadbike_01_F"]];

_veh set [T_VEH_truck_inf, ["CUP_O_Ural_TKA","CUP_B_MTVR_USA"]];
_veh set [T_VEH_truck_cargo, ["CUP_O_Ural_Open_TKA","CUP_O_Ural_TKA"]];
_veh set [T_VEH_truck_ammo, ["CUP_O_Ural_Reammo_TKA","CUP_B_MTVR_Ammo_USA"]];
_veh set [T_VEH_truck_repair, ["CUP_O_Ural_Repair_TKA","CUP_B_MTVR_Repair_USA"]];
_veh set [T_VEH_truck_medical , ["CUP_O_LR_Ambulance_TKA"]];
_veh set [T_VEH_truck_fuel, ["CUP_O_Ural_Refuel_TKA","CUP_B_MTVR_Refuel_USA"]];

//_veh set [T_VEH_submarine, ["B_SDV_01_F"]];

//==== Drones ====
_drone = []; _drone resize T_DRONE_SIZE;
_drone set [T_DRONE_SIZE-1, nil];
//_drone set [T_DRONE_DEFAULT, ["rhs_pchela1t_vvsc"]];


//_drone set [T_DRONE_UGV_unarmed, ["B_UGV_01_F"]];
//_drone set [T_DRONE_UGV_armed, ["B_UGV_01_rcws_F"]];
//_drone set [T_DRONE_plane_attack, ["B_UAV_02_dynamicLoadout_F"]];
//_drone set [T_DRONE_plane_unarmed, ["B_UAV_02_dynamicLoadout_F"]];
//_drone set [T_DRONE_heli_attack, ["B_T_UAV_03_dynamicLoadout_F"]];
//_drone set [T_DRONE_quadcopter, ["B_UAV_01_F"]];
//_drone set [T_DRONE_designator, ["B_Static_Designator_01_F"]];
//_drone set [T_DRONE_stat_HMG_low, ["B_HMG_01_A_F"]];
//_drone set [T_DRONE_stat_GMG_low, ["B_GMG_01_A_F"]];
//_drone set [T_DRONE_stat_AA, ["B_SAM_System_03_F"]];

//==== Cargo ====
_cargo = +(tDefault select T_CARGO);

//==== Groups ====
_group = +(tDefault select T_GROUP);


//==== Set arrays ====
_array set [T_INF, _inf];
_array set [T_VEH, _veh];
_array set [T_DRONE, _drone];
_array set [T_CARGO, _cargo];
_array set [T_GROUP, _group];

_array // End template
