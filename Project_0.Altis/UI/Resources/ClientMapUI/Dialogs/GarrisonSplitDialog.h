#include "..\..\UIProfileColors.h"
#include "..\ClientMapUI_Macros.h"

class GSPLIT_DIALOG
{
	idd = IDD_GSPLIT_DIALOG;
	
	class ControlsBackground
	{
		
	};
	class Controls
	{
		class GSPLIT_BG : MUI_BG_BLACKTRANSPARENT 
		{
			idc = -1;
			x = 0.15;
			y = 0.00;
			w = 0.7;
			h = 1;
			text = "";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};

		// LEFT LISTNBOX
		class GSPLIT_LB_LEFT_BUTTON_LEFT : MUI_LISTNBOX_BUTTON
		{
			idc = IDC_GSPLIT_LB_LEFT_LEFT;
			text = "<";
		};
		class GSPLIT_LB_LEFT_BUTTON_RIGHT : MUI_LISTNBOX_BUTTON
		{
			idc = IDC_GSPLIT_LB_LEFT_RIGHT;
			text = ">";
		};
		class GSPLIT_LB_LEFT : MUI_LISTNBOX 
		{
			idc = IDC_GSPLIT_LB_LEFT;
			//style = 16;
			x = 0.16;
			y = 0.17;
			w = 0.31;
			h = 0.72;
			columns[] = {0.1, 0.2};
			idcLeft = IDC_GSPLIT_LB_LEFT_LEFT; // Left button IDC
			idcRight = IDC_GSPLIT_LB_LEFT_RIGHT; // Right button IDC
		};
		// RIGHT LISTNBOX
		class GSPLIT_LB_RIGHT_BUTTON_LEFT : MUI_LISTNBOX_BUTTON
		{
			idc = IDC_GSPLIT_LB_RIGHT_LEFT;
			text = "<";
		};
		class GSPLIT_LB_RIGHT_BUTTON_RIGHT : MUI_LISTNBOX_BUTTON
		{
			idc = IDC_GSPLIT_LB_RIGHT_RIGHT;
			text = ">";
		};
		class GSPLIT_LB_RIGHT : MUI_LISTNBOX 
		{
			idc = IDC_GSPLIT_LB_RIGHT;
			x = 0.53;
			y = 0.17;
			w = 0.31;
			h = 0.72;
			columns[] = {0.1, 0.2};
			idcLeft = IDC_GSPLIT_LB_RIGHT_LEFT; // Left button IDC
			idcRight = IDC_GSPLIT_LB_RIGHT_RIGHT; // Right button IDC
		};
		// MOVE LEFT-RIGHT < << >> > BUTTONS
		class GSPLIT_MOVE_RIGHT : MUI_BUTTON_TXT 
		{
			idc = IDC_GSPLIT_BUTTON_MOVE_RIGHT;
			x = 0.48;
			y = 0.46;
			w = 0.04;
			h = 0.07;
			style = 0+2;
			text = ">";
			borderSize = 0;
			offsetPressedX = 0.1*MUI_TXT_SIZE_M;
			offsetPressedY = 0;
		};
		class GSPLIT_MOVE_RIGHT_ALL : MUI_BUTTON_TXT 
		{
			idc = IDC_GSPLIT_BUTTON_MOVE_RIGHT_ALL;
			x = 0.48;
			y = 0.38;
			w = 0.04;
			h = 0.07;
			style = 0+2;
			text = ">>";
			borderSize = 0;
			offsetPressedX = 0.1*MUI_TXT_SIZE_M;
			offsetPressedY = 0;
		};
		class GSPLIT_MOVE_LEFT : MUI_BUTTON_TXT 
		{
			idc = IDC_GSPLIT_BUTTON_MOVE_LEFT;
			x = 0.48;
			y = 0.54;
			w = 0.04;
			h = 0.07;			
			style = 0+2;
			text = "<";
			borderSize = 0;
			offsetPressedX = -0.1*MUI_TXT_SIZE_M;
			offsetPressedY = 0;
		};
		class GSPLIT_MOVE_LEFT_ALL : MUI_BUTTON_TXT 
		{
			idc = IDC_GSPLIT_BUTTON_MOVE_LEFT_ALL;
			x = 0.48;
			y = 0.62;
			w = 0.04;
			h = 0.07;
			style = 0+2;
			text = "<<";
			borderSize = 0;
			offsetPressedX = -0.1*MUI_TXT_SIZE_M;
			offsetPressedY = 0;
		};

		class GSPLIT_HEADLINE : MUI_BG_BLACKSOLID 
		{
			idc = -1;
			x = 0.15;
			y = 0.00;
			w = 0.65;
			h = 0.04;
			text = "Split garrison";			
		};
		class GSPLIT_HINTS : MUI_BG_BLACKSOLID 
		{
			idc = IDC_GSPLIT_HINTS;
			x = 0.15;
			y = 0.95;
			w = 0.7;
			h = 0.05;
			style = 0;
			text = "We can place hints here";		
		};
		class GSPLIT_STATIC_NEW_GAR : MUI_BG_BLACKTRANSPARENT 
		{
			idc = -1;
			x = 0.53;
			y = 0.05;
			w = 0.31;
			h = 0.04;
			style = 2;
			text = "New garrison";
			
		};
		class GSPLIT_STATIC_NEW_INF : MUI_BG_BLACKTRANSPARENT 
		{
			idc = IDC_GSPLIT_STATIC_NEW_INF;
			x = 0.53;
			y = 0.13;
			w = 0.31;
			h = 0.04;
			style = 0;
			text = "Infantry: 666";
			
		};
		class GSPLIT_STATIC_CURRENT_GAR : MUI_BG_BLACKTRANSPARENT 
		{
			idc = -1;
			x = 0.16;
			y = 0.05;
			w = 0.31;
			h = 0.04;
			style = 2;
			text = "Current garrison";
			
		};
		class GSPLIT_STATIC_NEW_CARGO : MUI_BG_BLACKTRANSPARENT 
		{
			idc = IDC_GSPLIT_STATIC_NEW_CARGO;
			x = 0.53;
			y = 0.09;
			w = 0.31;
			h = 0.04;
			style = 0;
			text = "Cargo seats: 666";
		};
		class GSPLIT_STATIC_CURRENT_CARGO : MUI_BG_BLACKTRANSPARENT 
		{
			idc = IDC_GSPLIT_STATIC_CURRENT_CARGO;
			x = 0.16;
			y = 0.09;
			w = 0.31;
			h = 0.04;
			style = 0;
			text = "Cargo seats: 666";			
		};
		class GSPLIT_STATIC_CURRENT_INF : MUI_BG_BLACKTRANSPARENT 
		{
			idc = IDC_GSPLIT_STATIC_CURRENT_INF;
			x = 0.16;
			y = 0.13;
			w = 0.31;
			h = 0.04;
			style = 0;
			text = "Infantry: 666";			
		};
		class GSPLIT_BUTTON_CLOSE : MUI_BUTTON_TXT 
		{
			idc = IDC_GSPLIT_BUTTON_CLOSE;
			x = 0.80;
			y = 0.0;
			w = 0.05;
			h = 0.04;
			text = "X";
			borderSize = 0;
			colorBackground[] = {0.6,0,0,1};	
		};
		class GSPLIT_BUTTON_CANCEL : MUI_BUTTON_TXT 
		{
			idc = IDC_GSPLIT_BUTTON_CANCEL;
			x = 0.64;
			y = 0.9;
			w = 0.11;
			h = 0.04;
			text = "Cancel";
			borderSize = 0;
		};
		class GSPLIT_BUTTON_SPLIT : MUI_BUTTON_TXT 
		{
			idc = IDC_GSPLIT_BUTTON_SPLIT;
			x = 0.25;
			y = 0.90;
			w = 0.11;
			h = 0.04;
			text = "Split";
			borderSize = 0;
		};
		
	};
	
};
