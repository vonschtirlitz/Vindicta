#include "common.hpp"

/*
Class: AI.CmdrAI.CmdrAction.Actions.MoveCmdrAction
Action to make an already existing garrison reinforce something.
Target can be garrison or location.
Not meant for simulations.

Parent: <CmdrAction>
*/

CLASS("DirectAttackCmdrAction", "CmdrAction")

	// ID of the garrison
	VARIABLE("garrId");

	// Target where to move to
	VARIABLE("target");

	// Move radius, only makes sense if position is specified
	// Otherwise it is determined automatically
	VARIABLE("radius");

	// _garrID - the ID of the garrison to move
	// _target - target variable
	METHOD("new") {
		PARAMS[P_THISOBJECT, P_NUMBER("_garrID"), P_ARRAY("_target") ];

		T_SETV("garrId", _garrID);
		T_SETV("target", _target);

	} ENDMETHOD;

	/* protected override */ METHOD("createTransitions") {
		params [P_THISOBJECT];

		T_PRVAR(garrId);
		T_PRVAR(target);

		// Assign the action we are performing to the garrison (so it is marked as busy for other actions)
		private _garrIdVar = T_CALLM1("createVariable", _garrId);
		private _assignAST_Args = [
				_thisObject, 						// This action, gets assigned to the garrison
				[CMDR_ACTION_STATE_START], 			// Do this at start
				CMDR_ACTION_STATE_READY_TO_MOVE, 	// State change when successful (can't fail)
				_garrIdVar]; 					// Id of garrison to assign the action to
		private _assignAST = NEW("AST_AssignActionToGarrison", _assignAST_Args);

		// Assign an attack action
		private _targetVar = T_CALLM1("createVariable", _target);
		private _attackAST_Args = [
				_thisObject,
				[CMDR_ACTION_STATE_READY_TO_MOVE], 	// Once we are split and assigned the action we can go
				CMDR_ACTION_STATE_END,				// State when we succeed, it leads to selecting new target (usually home)
				CMDR_ACTION_STATE_END, 				// If we are dead then go to end
				CMDR_ACTION_STATE_END,				// If we timeout then RTB
				_garrIdVar, 						// Id of the garrison doing the attacking
				_targetVar, 						// Target to attack (cluster or garrison supported)
				T_CALLM1("createVariable", 250)];					// Move radius
		private _attackAST = NEW("AST_GarrisonAttackTarget", _attackAST_Args);

		[_assignAST, _attackAST]
	} ENDMETHOD;

	/*
	Method: (virtual) getRecordSerial
	Returns a serialized CmdrActionRecord associated with this action.
	Derived classes should implement this to have proper support for client's UI.
	
	Parameters:	
		_world - <Model.WorldModel>, real world model that is being used.
	*/
	/* virtual override */ METHOD("getRecordSerial") {
		params [P_THISOBJECT, P_OOP_OBJECT("_garModel"), P_OOP_OBJECT("_world")];

		// Create a record
		private _record = NEW("AttackCmdrActionRecord", []);

		// Fill data values
		//SETV(_record, "garRef", GETV(_garModel, "actual"));

		// Resolve target
		private _target = T_GETV("target");
		_target params ["_tgtType", "_tgtTarget"];
		switch (_tgtType) do {
			case TARGET_TYPE_LOCATION: {
				// It's a location model
				private _locModel = CALLM1(_world, "getLocation", _tgtTarget);
				SETV(_record, "locRef", GETV(_locModel, "actual"));
			};
			case TARGET_TYPE_GARRISON: {
				// It's a garrison model
				private _garModel = CALLM1(_world, "getGarrison", _tgtTarget);
				SETV(_record, "dstGarRef", GETV(_garModel, "actual"));
			};
			case TARGET_TYPE_POSITION: {
				SETV(_record, "pos", _tgtTarget);
			};
			default {
				OOP_ERROR_2("Target type %1 is not implemented, target: %1", _tgtType, _tgtTarget);
			};
		};

		// Serialize and delete it
		private _serial = SERIALIZE(_record);
		DELETE(_record);

		// Return the serialized data
		_serial
	} ENDMETHOD;

ENDCLASS;