#include "Location.hpp"
#include "..\common.h"
#include "..\Group\Group.hpp"

// Class: Location
/*
Method: addSpawnPosFromBuilding
Adds spawn positions of this building to the location.

Parameters: _building

_building - the object handle of the building

Author: Sparker 03.08.2018
*/

params [P_THISOBJECT, P_OBJECT("_building")];

private _class = typeOf _building;

private _type = T_GETV("type");
if (_type == LOCATION_TYPE_CITY) exitWith {}; // We must be truly insane if we want to process all buildings in a city

// Cylindrical to orthogonal coordinates
_cylToOrth = {
	params ["_dist", "_angle", "_height"];
	[_dist*(sin _angle), _dist*(cos _angle), _height]
};

//Pre-defined positions for static HMG and GMG in buildings. Check initBuildingTypes.sqf.
private _bps = location_bp_HGM_GMG_high getVariable _class;
if(!isNil "_bps") then {
	//Add every position from the array to the spawn positions array
	{
		_bp = _x;
		_bdir = direction _building;
		if(count _bp == 2) then { //This position is defined by building position ID and direction
			_position = _building buildingPos (_bp select 0);
			private _args = [T_PL_HMG_GMG_high, [GROUP_TYPE_INF, GROUP_TYPE_STATIC], _position, _bdir + (_bp select 1), _building]; // [["_unitTypes", [], [[]]], ["_groupTypes", [], [[]]], ["_pos", [], [[]]], ["_dir", 0, [0]], ["_building", objNull, [objNull]] ];
			T_CALLM("addSpawnPos", _args);
			//diag_log format ["Addes HMG position: ID: %1", _bp select 0];
		} else { //This position is defined by offset in cylindrical coordinates
			private _offsetOrthCoordinates = _bp call _cylToOrth;
			private _posWorld = _building modelToWorldWorld _offsetOrthCoordinates;
			private _posATL = ASLtoATL _posWorld;
			_posATL vectorAdd [0, 0, -0.1]; //-0.1 drop the statics from tiny height to cover for model misalignment across templates
			private _args = [T_PL_HMG_GMG_high, [GROUP_TYPE_INF, GROUP_TYPE_STATIC], _posATL, _bdir + (_bp select 3), _building]; // [["_unitTypes", [], [[]]], ["_groupTypes", [], [[]]], ["_pos", [], [[]]], ["_dir", 0, [0]], ["_building", objNull, [objNull]] ];
			T_CALLM("addSpawnPos", _args);
			//diag_log format ["Addes HMG position: %1", _bp];
		};
	} forEach _bps;
};

// Pre-defined positions for cargo boxes
_bps = location_bp_cargo_medium getVariable _class;

// We want to do this only for police stations.
// It's very annoying when cargo boxes spawn in some random house at outpost instead of pre-defined position.
if (!(isNil "_bps") && _type == LOCATION_TYPE_POLICE_STATION) then {
	{
		_bp = _x;
		_bdir = direction _building;
		if(count _bp >= 3) then { //This position is defined by offset in cylindrical coordinates
			private _offsetOrthCoordinates = _bp call _cylToOrth;
			private _posWorld = _building modelToWorldWorld _offsetOrthCoordinates;
			private _posATL = ASLToATL _posWorld;
			private _args = [T_PL_cargo_small_medium, [GROUP_TYPE_INF], _posATL, _bdir + (_bp select 3), _building]; // [["_unitTypes", [], [[]]], ["_groupTypes", [], [[]]], ["_pos", [], [[]]], ["_dir", 0, [0]], ["_building", objNull, [objNull]] ];
			T_CALLM("addSpawnPos", _args);

			//diag_log format ["Addes cargo box position: %1", _bp];
		};

	} forEach _bps;
};