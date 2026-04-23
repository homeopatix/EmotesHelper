------------------------------------------------------------------------------------------
-- Activation file
-- Written by Homeopatix
-- 7 january 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Activate Plugin --
------------------------------------------------------------------------------------------
Plugins[pluginName].Load = function()
	notification("Version " .. Plugins[pluginName]:GetVersion() .. " " .. Strings.PluginText .. ", " .. Strings.PluginLoaded);
end
------------------------------------------------------------------------------------------
-- Unload Plugin --
------------------------------------------------------------------------------------------
Plugins[pluginName].Unload = function()
	SaveSettings();
	notification(Strings.PluginUnactivated);
end