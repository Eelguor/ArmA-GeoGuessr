import ctrlListNBox;

class stats {
	idd = 60000;
	movingEnable = true;
	name= "stats";
	enableSimulation = true;
	onLoad = "['onLoad'] spawn geo_fnc_displayStats;";
	
	class ControlsBackground {
		class titleStats {
			idc = -1;
			text = "Statistics";
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.044 * safezoneH;
			style = 2;
			colorBackground[] = {0.898,0.043,0.122};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 30) * 1);
			align = "left";
			moving = 1;
			type = 0;
		};

		class BackgroundStats {
			idc = -1;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.506 * safezoneH;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {1,1,1,1};
			type = 0;
			style = 0;
			text = "";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 30) * 1);
			font = "PuristaBold";
		};

		class BackgroundListNBox {
			idc = -1;
			x = 0.296844 * safezoneW + safezoneX;
			y = 0.2756 * safezoneH + safezoneY;
			w = 0.406311 * safezoneW;
			h = 0.4928 * safezoneH;
			colorBackground[] = {0.1,0.1,0.1,0.8};
			colorText[] = {1,1,1,1};
			type = 0;
			style = 0;
			text = "";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 30) * 1);
			font = "PuristaBold";
		};
	};

	class Controls {
		class ListNbox: ctrlListNBox {
			idc = 61000;
			x = 0.296844 * safezoneW + safezoneX;
			y = 0.2756 * safezoneH + safezoneY;
			w = 0.406311 * safezoneW;
			h = 0.4928 * safezoneH;
			disableOverflow = 1;
			columns[] = {0, 0.2, 0.4, 0.6, 0.8, 1};
			colorSelectBackground[] = {0.898,0.043,0.122};
			colorSelectBackground2[] = {0.898,0.043,0.122};
			class Items {
			};
		};
	};
};