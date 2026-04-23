------------------------------------------------------------------------------------------
-- Command file
-- Written by Homeopatix
-- 7 january 2021
------------------------------------------------------------------------------------------
EmotesHelperCommand = Turbine.ShellCommand();
------------------------------------------------------------------------------------------
-- commands
------------------------------------------------------------------------------------------
function EmotesHelperCommand:Execute( command, arguments )
	------------------------------------------------------------------------------------------
	-- Help command--
	------------------------------------------------------------------------------------------
	if ( arguments == "help" ) then
		commandsHelp();
	elseif ( arguments == "show" ) then
		Turbine.Shell.WriteLine(rgb["start"] .. pluginName .. rgb["clear"] .. " - " .. Strings.PluginWindowShow);
		EmotesHelperWindow:SetVisible(true);
		settings["isWindowVisible"]["isWindowVisible"] = true;
		SaveSettings();
	elseif ( arguments == "hide" ) then
		Turbine.Shell.WriteLine(rgb["start"] .. pluginName .. rgb["clear"] .. " - " ..Strings.PluginWindowHide);
		EmotesHelperWindow:SetVisible(false);
		settings["isWindowVisible"]["isWindowVisible"] = false;
		SaveSettings();
	elseif ( arguments == "options" ) then
		Turbine.Shell.WriteLine("Display the options Window");
		OptionsWindow:SetVisible(true);
		EmotesHelperWindow:SetVisible(false);
		settings["isWindowVisible"]["isWindowVisible"] = false;
		settings["isOptionsWindowVisible"]["isOptionsWindowVisible"] = true;
		SaveSettings();
------------------------------------------------------------------------------------------
-- toggle command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "toggle" ) then
		if(settings["isWindowVisible"]["isWindowVisible"] == true)then
			Turbine.Shell.WriteLine(rgb["start"] .. pluginName .. rgb["clear"] .. " - " .. Strings.PluginWindowHide);
			EmotesHelperWindow:SetVisible(false);
			settings["isWindowVisible"]["isWindowVisible"] = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. pluginName .. rgb["clear"] .. " - " .. Strings.PluginWindowShow);
			EmotesHelperWindow:SetVisible(true);
			settings["isWindowVisible"]["isWindowVisible"] = true;
		end
		SaveSettings();
	elseif ( arguments == "lock" ) then
		--Turbine.Shell.WriteLine("Hide the PopoHelper Window");
		if(settings["isLocked"]["value"] == false)then
			settings["isLocked"]["value"] = true;
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " : " .. Strings.PluginLocked);
		else
			settings["isLocked"]["value"] = false;
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " : " .. Strings.PluginUnlocked);
		end
		SaveSettings();
	elseif ( arguments == "clear" ) then
		Turbine.Shell.WriteLine(rgb["start"] .. pluginName .. rgb["clear"] .. " - " ..Strings.PluginWindowClear);
		ClearWindow();
		SaveSettings();
	elseif ( arguments == "default" ) then
		--Turbine.Shell.WriteLine("default the Animalerie Window");
		Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginDefault);
		settings["nbrLine"]["nbr"] = 13;
		settings["nbrSlots"]["nbr"] = 10;
		for i=1, 220 do
			settings["shortcutsType"]["Type" .. i] = 5;
			settings["shortcuts"]["Data" .. i] = "";
		end
	-- predefine base emotes
		EmotesHelperWindow:SetVisible(true);
		settings["shortcuts"]["Data86"] = "0x7000B31C";
		settings["shortcuts"]["Data42"] = "0x7000B320";
		settings["shortcuts"]["Data106"] = "0x70005C9B";
		settings["shortcuts"]["Data51"] = "0x7000B3D5";
		settings["shortcuts"]["Data74"] = "0x7000B318";
		settings["shortcuts"]["Data72"] = "0x7000B323";
		settings["shortcuts"]["Data76"] = "0x70005CA8";
		settings["shortcuts"]["Data33"] = "0x70005C93";
		settings["shortcuts"]["Data41"] = "0x70005C86";
		settings["shortcuts"]["Data92"] = "0x70005C70";
		settings["shortcuts"]["Data104"] = "0x70029EF8";
		settings["shortcuts"]["Data69"] = "0x70005C8D";
		settings["shortcuts"]["Data94"] = "0x7000B31E";
		settings["shortcuts"]["Data21"] = "0x7000B311";
		settings["shortcuts"]["Data121"] = "0x70005C9F";
		settings["shortcuts"]["Data113"] = "0x7000B31B";
		settings["shortcuts"]["Data120"] = "0x7004B28E";
		settings["shortcuts"]["Data63"] = "0x70005CAF";
		settings["shortcuts"]["Data56"] = "0x7000B30A";
		settings["shortcuts"]["Data112"] = "0x70005C6D";
		settings["shortcuts"]["Data60"] = "0x70005CB1";
		settings["shortcuts"]["Data15"] = "0x70005C89";
		settings["shortcuts"]["Data80"] = "0x70005C94";
		settings["shortcuts"]["Data8"] = "0x7000B3D0";
		settings["shortcuts"]["Data55"] = "0x70005C9C";
		settings["shortcuts"]["Data13"] = "0x7000991E";
		settings["shortcuts"]["Data29"] = "0x70005C82";
		settings["shortcuts"]["Data10"] = "0x7000B30F";
		settings["shortcuts"]["Data4"] = "0x7000B30B";
		settings["shortcuts"]["Data84"] = "0x70005C7B";
		settings["shortcuts"]["Data7"] = "0x7000B313";
		settings["shortcuts"]["Data109"] = "0x7000B3D7";
		settings["shortcuts"]["Data114"] = "0x70005C7D";
		settings["shortcuts"]["Data11"] = "0x7000B30C";
		settings["shortcuts"]["Data123"] = "0x7000B322";
		settings["shortcuts"]["Data22"] = "0x70005CA7";
		settings["shortcuts"]["Data1"] = "0x70005CA4";
		settings["shortcuts"]["Data53"] = "0x70005C9D";
		settings["shortcuts"]["Data67"] = "0x70005CAC";
		settings["shortcuts"]["Data26"] = "0x70005C79";
		settings["shortcuts"]["Data17"] = "0x70005C85";
		settings["shortcuts"]["Data91"] = "0x7000B31D";
		settings["shortcuts"]["Data34"] = "0x70005CA6";
		settings["shortcuts"]["Data24"] = "0x7000B312";
		settings["shortcuts"]["Data54"] = "0x7000B3D8";
		settings["shortcuts"]["Data25"] = "0x7000B326";
		settings["shortcuts"]["Data64"] = "0x70005CB2";
		settings["shortcuts"]["Data27"] = "0x7000B316";
		settings["shortcuts"]["Data110"] = "0x70005CA0";
		settings["shortcuts"]["Data90"] = "0x70009076";
		settings["shortcuts"]["Data59"] = "0x70005CB4";
		settings["shortcuts"]["Data75"] = "0x7000B317";
		settings["shortcuts"]["Data40"] = "0x7000B30E";
		settings["shortcuts"]["Data3"] = "0x7000B309";
		settings["shortcuts"]["Data49"] = "0x7000B3CC";
		settings["shortcuts"]["Data97"] = "0x70005C90";
		settings["shortcuts"]["Data98"] = "0x7000B3D2";
		settings["shortcuts"]["Data16"] = "0x70005C6A";
		settings["shortcuts"]["Data19"] = "0x70005C76";
		settings["shortcuts"]["Data85"] = "0x7000B31A";
		settings["shortcuts"]["Data68"] = "0x70005CAE";
		settings["shortcuts"]["Data95"] = "0x70010499";
		settings["shortcuts"]["Data46"] = "0x7000B3D4";
		settings["shortcuts"]["Data87"] = "0x70005C80";
		settings["shortcuts"]["Data79"] = "0x7000B3CF";
		settings["shortcuts"]["Data99"] = "0x7000B310";
		settings["shortcuts"]["Data5"] = "0x70005C91";
		settings["shortcuts"]["Data66"] = "0x70005CAB";
		settings["shortcuts"]["Data102"] = "0x70005C98";
		settings["shortcuts"]["Data31"] = "0x70005C84";
		settings["shortcuts"]["Data89"] = "0x70005C97";
		settings["shortcuts"]["Data82"] = "0x7000C5EC";
		settings["shortcuts"]["Data12"] = "0x7000B325";
		settings["shortcuts"]["Data105"] = "0x7000B3CD";
		settings["shortcuts"]["Data28"] = "0x70005CA9";
		settings["shortcuts"]["Data18"] = "0x7001049A";
		settings["shortcuts"]["Data61"] = "0x70005CB3";
		settings["shortcuts"]["Data32"] = "0x70005C81";
		settings["shortcuts"]["Data107"] = "0x70005C8A";
		settings["shortcuts"]["Data88"] = "0x70005C9E";
		settings["shortcuts"]["Data108"] = "0x70005C61";
		settings["shortcuts"]["Data81"] = "0x70005CAA";
		settings["shortcuts"]["Data23"] = "0x70018F58";
		settings["shortcuts"]["Data78"] = "0x70019D25";
		settings["shortcuts"]["Data71"] = "0x7000B3D3";
		settings["shortcuts"]["Data9"] = "0x70005CA1";
		settings["shortcuts"]["Data77"] = "0x7000F4EF";
		settings["shortcuts"]["Data116"] = "0x70005C7E";
		settings["shortcuts"]["Data118"] = "0x70005C67";
		settings["shortcuts"]["Data119"] = "0x7001049B";
		settings["shortcuts"]["Data70"] = "0x70005C7C";
		settings["shortcuts"]["Data6"] = "0x70005C7A";
		settings["shortcuts"]["Data38"] = "0x70005C96";
		settings["shortcuts"]["Data39"] = "0x70005C73";
		settings["shortcuts"]["Data47"] = "0x70005CA2";
		settings["shortcuts"]["Data43"] = "0x70005C64";
		settings["shortcuts"]["Data20"] = "0x7000B3D9";
		settings["shortcuts"]["Data111"] = "0x70029EF9";
		settings["shortcuts"]["Data124"] = "0x70058358";
		settings["shortcuts"]["Data73"] = "0x70005C87";
		settings["shortcuts"]["Data96"] = "0x7000B319";
		settings["shortcuts"]["Data14"] = "0x7000B3CE";
		settings["shortcuts"]["Data101"] = "0x70005C99";
		settings["shortcuts"]["Data35"] = "0x70005C88";
		settings["shortcuts"]["Data57"] = "0x7000B321";
		settings["shortcuts"]["Data117"] = "0x70005C9A";
		settings["shortcuts"]["Data83"] = "0x7000B31F";
		settings["shortcuts"]["Data30"] = "0x70005C83";
		settings["shortcuts"]["Data58"] = "0x70005CB5";
		settings["shortcuts"]["Data37"] = "0x70005C95";
		settings["shortcuts"]["Data103"] = "0x7000B324";
		settings["shortcuts"]["Data48"] = "0x70005CA3";
		settings["shortcuts"]["Data36"] = "0x700196B0";
		settings["shortcuts"]["Data52"] = "0x7000B3D1";
		settings["shortcuts"]["Data122"] = "0x70005C8B";
		settings["shortcuts"]["Data115"] = "0x7000B3D6";
		settings["shortcuts"]["Data62"] = "0x70005CB0";
		settings["shortcuts"]["Data93"] = "0x70005C92";
		settings["shortcuts"]["Data2"] = "0x70005C78";
		settings["shortcuts"]["Data45"] = "0x70005C7F";
		settings["shortcuts"]["Data44"] = "0x70009075";
		settings["shortcuts"]["Data50"] = "0x70005C8F";
		settings["shortcuts"]["Data65"] = "0x70005CAD";
		settings["shortcuts"]["Data100"] = "0x7000B30D";
		-- end predefine base emotes
		OptionsWindow:SetVisible(false);
		GenerateWindow();
		settings["isWindowVisible"]["isWindowVisible"] = true;
		EmotesHelperWindow:SetPosition((Turbine.UI.Display:GetWidth()-EmotesHelperWindow:GetWidth())/2,(Turbine.UI.Display:GetHeight()-EmotesHelperWindow:GetHeight())/2);
		SettingTheShortCuts();
		SaveSettings();
	elseif ( arguments == "esc" ) then
		if(settings["escEnable"]["escEnable"] == true) then
			Turbine.Shell.WriteLine(rgb["start"] .. pluginName .. rgb["clear"] .. " - " ..Strings.PluginEscDesable);
			settings["escEnable"]["escEnable"] = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. pluginName .. rgb["clear"] .. " - " ..Strings.PluginEscEnable);
			settings["escEnable"]["escEnable"] = true;
		end
		SaveSettings();
	------------------------------------------------------------------------------------------
	-- alt command--
	------------------------------------------------------------------------------------------
	elseif ( arguments == "alt" ) then
		if(settings["altEnable"]["altEnable"] == true) then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginAltDesable);
			settings["altEnable"]["altEnable"] = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginAltEnable);
			settings["altEnable"]["altEnable"] = true;
		end
		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- Add the sahell command --
------------------------------------------------------------------------------------------
Turbine.Shell.AddCommand( "Emo;EmotesHelper", EmotesHelperCommand );