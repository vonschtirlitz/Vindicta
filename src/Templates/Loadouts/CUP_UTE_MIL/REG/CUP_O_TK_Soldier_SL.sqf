comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add weapons";
this addWeapon "CUP_arifle_M4A3_desert";
this addPrimaryWeaponItem "CUP_30Rnd_556x45_Stanag_Mk16_black";
this addPrimaryWeaponItem "cup_optic_acog_ta01b_rmr_coyote";

comment "Add containers";
 _randUniform = selectRandom ["CUP_U_B_BDUv2_DCU", "CUP_U_B_BDUv2_dirty_DCU", "CUP_U_B_BDUv2_gloves_DCU", "CUP_U_B_BDUv2_gloves_dirty_DCU",
 "CUP_U_B_BDUv2_roll_DCU", "CUP_U_B_BDUv2_roll_dirty_DCU", "CUP_U_B_BDUv2_roll_gloves_DCU", "CUP_U_B_BDUv2_roll_gloves_dirty_DCU",
 "CUP_U_B_BDUv2_desert", "CUP_U_B_BDUv2_dirty_desert", "CUP_U_B_BDUv2_gloves_desert", "CUP_U_B_BDUv2_gloves_dirty_desert",
 "CUP_U_B_BDUv2_roll_desert", "CUP_U_B_BDUv2_roll_dirty_desert", "CUP_U_B_BDUv2_roll_gloves_desert", "CUP_U_B_BDUv2_roll_gloves_dirty_desert",
 "CUP_U_B_BDUv2_M81", "CUP_U_B_BDUv2_dirty_M81", "CUP_U_B_BDUv2_gloves_M81", "CUP_U_B_BDUv2_gloves_dirty_M81",
 "CUP_U_B_BDUv2_roll_M81", "CUP_U_B_BDUv2_roll_dirty_M81", "CUP_U_B_BDUv2_roll_gloves_M81", "CUP_U_B_BDUv2_roll_gloves_dirty_M81"
 ]
}
this forceAddUniform _randUniform;

this addVest "CUP_V_O_TK_Vest_1";

comment "Add binoculars";
this addWeapon "Binocular";

comment "Add items to containers";
this addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {this addItemToUniform "CUP_30Rnd_556x45_Stanag_Mk16_black";};
for "_i" from 1 to 3 do {this addItemToVest "CUP_30Rnd_556x45_Stanag_Mk16_black";};
for "_i" from 1 to 2 do {this addItemToVest "CUP_HandGrenade_RGD5";};
this addItemToVest "SmokeShell";
this addItemToVest "SmokeShellOrange";
this addHeadgear "CUP_H_TK_Helmet";
this addGoggles "CUP_FR_NeckScarf";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "ItemGPS";

comment "Set identity";
[this,"PersianHead_A3_03","male01per"] call BIS_fnc_setIdentity;
