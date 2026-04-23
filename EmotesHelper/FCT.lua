------------------------------------------------------------------------------------------
-- fonctions file
-- Written by Homeopatix
-- 7 january 2021
------------------------------------------------------------------------------------------
-- clear the main window
------------------------------------------------------------------------------------------
function ClearWindow()
	for i=1, 220 do
		settings["shortcuts"]["Data" .. i] = "";
		settings["shortcutsType"]["Type" .. i] = 0;
		if(centerQS[i] ~= nil)then
			centerQS[i]:SetShortcut( Turbine.UI.Lotro.Shortcut( ));
		end
	end
end
------------------------------------------------------------------------------------------
-- display the list of command
------------------------------------------------------------------------------------------
function commandsHelp()
	notification(
		rgb["start"] .. 
		Strings.PluginHelp1 ..
		rgb["clear"] ..
		Strings.PluginHelp2 ..
		Strings.PluginHelp3 ..
		Strings.PluginHelp4 ..
		Strings.PluginHelp5 ..
		Strings.PluginHelp6 ..
		Strings.PluginHelp7 ..
		Strings.PluginHelp8 ..
		Strings.PluginHelp9 ..
		Strings.PluginHelp10
	);
end
------------------------------------------------------------------------------------------
-- event handler for escape key
------------------------------------------------------------------------------------------
function EscapeKeyPressed()
	EmotesHelperWindow.KeyDown=function(sender, args)
		if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
			if(settings["escEnable"]["escEnable"] == false) then
				EmotesHelperWindow:SetVisible(false);
				settings["isWindowVisible"]["isWindowVisible"] = false;
				SaveSettings();
			end
			OptionsWindow:SetVisible(false);
			settings["isOptionsWindowVisible"]["isOptionsWindowVisible"] = false;
			SaveSettings();
		end
	
		-- https://www.lotro.com/forums/showthread.php?493466-How-to-hide-a-window-on-F12&p=6581962#post6581962
		if ( args.Action == 268435635 ) then
			hudVisible=not hudVisible;
			if hudVisible then
				EmotesHelperWindow:SetVisible(false);
				MainMinimizedIcon:SetVisible(false);
			else
				EmotesHelperWindow:SetVisible(settings["isWindowVisible"]["isWindowVisible"]);
				MainMinimizedIcon:SetVisible(true);
			end
		end
	end
end
------------------------------------------------------------------------------------------
-- setting the shortcuts	
------------------------------------------------------------------------------------------
function SettingTheShortCuts()
	local totalSlots = tonumber(settings["nbrSlots"]["nbr"]) * tonumber(settings["nbrLine"]["nbr"]);

	for i=1, totalSlots do
		if(settings["shortcuts"]["Data" .. i] ~= "")then
			centerQS[i]:SetShortcut( Turbine.UI.Lotro.Shortcut( settings["shortcutsType"]["Type" .. i], settings["shortcuts"]["Data" .. i] ) );
		end
	end
end
------------------------------------------------------------------------------------------
-- setting the shortcuts for drag and drop	
------------------------------------------------------------------------------------------
function DragAndDrop()
	local totalSlots = tonumber(settings["nbrSlots"]["nbr"]) * tonumber(settings["nbrLine"]["nbr"]);

	for i=1, totalSlots do
		centerQS[i].DragDrop = function(sender, args)
			local tmp = Turbine.UI.Lotro.Quickslot();

			tmp = centerQS[i]:GetShortcut();
			tmp = tmp:GetData();

			settings["shortcuts"]["Data" .. i] = tmp;

			tmp2 = centerQS[i]:GetShortcut();
			tmp2 = tmp2:GetType();

			settings["shortcutsType"]["Type" .. i] = tmp2;

			SaveSettings();
		end
	end
end
------------------------------------------------------------------------------------------
-- delete the shortcut with mouse wheel
------------------------------------------------------------------------------------------
function DeleteShortCutes()
	local totalSlots = tonumber(settings["nbrSlots"]["nbr"]) * tonumber(settings["nbrLine"]["nbr"]);

	for i=1, totalSlots do
		centerQS[i].MouseWheel = function(sender, args)
			if(settings["isLocked"]["value"] == false)then
				settings["shortcuts"]["Data" .. i] = ""; 
				settings["shortcutsType"]["Type" .. i] = 0;
				centerQS[i]:SetShortcut(Turbine.UI.Lotro.Shortcut());
				SaveSettings();
			end
		end
	end
end
------------------------------------------------------------------------------------------
-- MousCLick Handler
------------------------------------------------------------------------------------------
function MouseClickHandler()
	local totalSlots = tonumber(settings["nbrSlots"]["nbr"]) * tonumber(settings["nbrLine"]["nbr"]);

	for i=1, totalSlots do
		centerQS[i].MouseClick = function(sender, args)
			EmotesHelperWindow:SetVisible(false);
			settings["isWindowVisible"]["isWindowVisible"] = false;
			SaveSettings();
		end
	end
end
------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
function ClosingTheWindow()
	function EmotesHelperWindow:Closing(sender, args)
		settings["isWindowVisible"]["isWindowVisible"] = false;
		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- updating the window
------------------------------------------------------------------------------------------
function UpdateWindow()
	GenerateWindow();
end
------------------------------------------------------------------------------------------
-- window position changed
------------------------------------------------------------------------------------------
function WindowPositionChanged()
	EmotesHelperWindow.PositionChanged = function( sender, args )
   		local x,y = EmotesHelperWindow:GetPosition();
		settings["windowPosition"]["xPos"] = x;
   		settings["windowPosition"]["yPos"] = y;
		settings["optionsWindowPosition"]["xPos"] = x;
		settings["optionsWindowPosition"]["yPos"] = y;
		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- options window position changed
------------------------------------------------------------------------------------------
function OptionsWindowPositionChanged()
	OptionsWindow.PositionChanged = function( sender, args )
		local x,y = OptionsWindow:GetPosition();
		settings["optionsWindowPosition"]["xPos"] = x;
		settings["optionsWindowPosition"]["yPos"] = y;
		SaveSettings();
	end
end

function CreateAndHandleMinimizeIcon()
if(settings["isWindowVisible"]["isWindowVisible"] == true)then
	MainMinimizedIcon = MinimizedIcon(Images.MinimizedIcon, 32, 32, EmotesHelperWindow:SetVisible(true));
	else
		MainMinimizedIcon = MinimizedIcon(Images.MinimizedIcon, 32, 32, EmotesHelperWindow:SetVisible(false));
	end

	MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon:SetZOrder(0);

	MainMinimizedIcon.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon:GetTop();
		SaveSettings();
	end
end