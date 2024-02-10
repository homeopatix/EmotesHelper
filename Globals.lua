------------------------------------------------------------------------------------------
-- localization file
-- Written by Homeopatix
-- 7 january 2021
------------------------------------------------------------------------------------------
function CreateLocalizationInfo()
	Strings = {};

	------------------------------------------------------------------------------------------
	-- datas for special character
	------------------------------------------------------------------------------------------
	-- ü = \195\188
	-- ä = \195\164
	-- ö = \195\182
	-- Ä = \195\132
	-- ß = \195\159
	-- à = \195\160
	-- é = \195\169
	-- è = \195\168
	------------------------------------------------------------------------------------------
	-- Deutsche --
	------------------------------------------------------------------------------------------
	if Turbine.Engine.GetLanguage() == Turbine.Language.German then
		Strings.PluginName = "EmotesHelper";
		Strings.PluginText = "Von Homeopatix";
		Strings.PluginEscEnable = "Escape-Taste aktiviert";
		Strings.PluginEscDesable = "Escape-Taste deaktiviert";
		Strings.PluginAltEnable = "Alt-Taste aktiviert";
		Strings.PluginAltDesable = "Alt-Taste deaktiviert";
		Strings.PluginOptionsText = "EmotesHelper Optionen";
		Strings.PluginDefault = "default die EmotesHelper";
		Strings.PluginLocked = "Gesperrte Symbole";
		Strings.PluginUnlocked = "Symbole freigeschaltet";
		Strings.PluginWindowShow = "Schaufenster.";
		Strings.PluginWindowHide = "Verstecke das Fenster.";
		------------------------------------------------------------------------------------------
		-- help --
		------------------------------------------------------------------------------------------
		Strings.PluginHelp1 = "\n\nListe der Befehle:\n";
		Strings.PluginHelp2 = "/Emo show - Schaufenster.\n";
		Strings.PluginHelp3 = "/Emo hide - verstecke das Fenster.\n";
		Strings.PluginHelp4 = "/Emo options - Zeigen Sie das Optionsfenster an.\n";
		Strings.PluginHelp5 = "/Emo clear - L\195\182schen Sie alle Verkn\195\188pfungen.\n";
		Strings.PluginHelp6 = "/Emo default F\195\188lle mit grundlegenden Emotes\n";
		Strings.PluginHelp7 = "/Emo lock um die Symbole zu sperren oder zu entsperren\n";
		Strings.PluginHelp8 = "/Emo toggle - Fenster ein-oder ausblenden\n";
		Strings.PluginHelp9 = "/Emo alt - Aktivieren oder deaktivieren Sie die alt-Taste um das Symbol zu verschieben.\n\n";
		Strings.PluginHelp10 = "Klicken Sie mit der rechten Maustaste auf das Symbol, um das Optionsfeld anzuzeigen";
		------------------------------------------------------------------------------------------
		-- command text  --
		------------------------------------------------------------------------------------------
		Strings.PluginWindowShow = "Schaufenster.";
		Strings.PluginWindowHide = "verstecke das Fenster.";
		Strings.PluginWindowClear = "L\195\182schen Sie alle Verkn\195\188pfungen.";
		------------------------------------------------------------------------------------------
		-- option window --
		------------------------------------------------------------------------------------------
		Strings.PluginOption1 = "Anzahl der Zeilen";
		Strings.PluginOption2 = "Anzahl der Steckpl\195\164tze pro Zeile";
		Strings.PluginOption3 = "Schlie\195\159en Sie das Fenster automatisch mit einem Klick auf das Emote";
		Strings.PluginOption4 = "Auto Schlie\195\159en";
		Strings.PluginOption10 = "\195\132nderungen validieren";
		------------------------------------------------------------------------------------------
		-- Français --
		------------------------------------------------------------------------------------------
elseif Turbine.Engine.GetLanguage() == Turbine.Language.French then
		Strings.PluginName = "EmotesHelper";
		Strings.PluginText = "Par Homeopatix";
		Strings.PluginEscEnable = "Touche Escape activ\195\169";
		Strings.PluginEscDesable = "Touche Escape desactiv\195\169";
		Strings.PluginAltEnable = "Touche Alt activ\195\169";
		Strings.PluginAltDesable = "Touche Alt desactiv\195\169";
		Strings.PluginOptionsText = "EmotesHelper Options";
		Strings.PluginDefault = "default EmotesHelper";
		Strings.PluginLocked = "Icones verrouill\195\169es";
		Strings.PluginUnlocked = "Icones d\195\169verouill\195\169es";
		Strings.PluginWindowShow = "Affiche la fen\195\168tre.";
		Strings.PluginWindowHide = "Cache la fen\195\168tre.";
		------------------------------------------------------------------------------------------
		-- help --
		------------------------------------------------------------------------------------------
		Strings.PluginHelp1 = "\n\nListe des commandes:\n";
		Strings.PluginHelp2 = "/Emo show - affiche la fen\195\170tre.\n";
		Strings.PluginHelp3 = "/Emo hide - cache la fen\195\170tre.\n";
		Strings.PluginHelp4 = "/Emo options - affiche la fen\195\170tre d'options.\n";
		Strings.PluginHelp5 = "/Emo clear - efface tous les raccourcis.\n";
		Strings.PluginHelp6 = "/Emo default remplit avec les emotes de base\n";
		Strings.PluginHelp7 = "/Emo lock pour verrouill\195\169 ou d\195\169verrouill\195\169 les icones\n";
		Strings.PluginHelp8 = "/Emo toggle - affiche ou cache la fenetre\n";
		Strings.PluginHelp9 = "/Emo alt - Active ou d\195\169sactive la touche alt pour le d\195\169placement de l'icon.\n\n";
		Strings.PluginHelp10 = "Clique droit sur l'icon pour afficher la fen\195\170tre d'options";
		------------------------------------------------------------------------------------------
		-- command text  --
		------------------------------------------------------------------------------------------
		Strings.PluginWindowShow = "Affiche la fen\195\170tre.";
		Strings.PluginWindowHide = "Cache la fen\195\170tre.";
		Strings.PluginWindowClear = "Efface tous les raccourcis.";
		------------------------------------------------------------------------------------------
		-- option window --
		------------------------------------------------------------------------------------------
		Strings.PluginOption1 = "Nombre de lignes";
		Strings.PluginOption2 = "Nombre d'emplacements par ligne";
		Strings.PluginOption3 = "Ferme automatiquement la fen\195\170tre avec un click sur l'emote";
		Strings.PluginOption4 = "Ferme auto";
		Strings.PluginOption10 = "Valider les changements";
		------------------------------------------------------------------------------------------
		-- English --
		------------------------------------------------------------------------------------------
elseif Turbine.Engine.GetLanguage() == Turbine.Language.English then
		Strings.PluginName = "EmotesHelper";
		Strings.PluginText = "By Homeopatix";
		Strings.PluginEscEnable = "Escape key Activated";
		Strings.PluginEscDesable = "Escape key Desactivated";
		Strings.PluginAltEnable = "Alt key Activated";
		Strings.PluginAltDesable = "Alt key Desactivated";
		Strings.PluginOptionsText = "Options EmotesHelper";
		Strings.PluginDefault = "default the EmotesHelper";
		Strings.PluginLocked = "Icons Locked";
		Strings.PluginUnlocked = "Icons Unlocked";
		Strings.PluginWindowShow = "Show the window.";
		Strings.PluginWindowHide = "Hide the window.";
		------------------------------------------------------------------------------------------
		-- help --
		------------------------------------------------------------------------------------------
		Strings.PluginHelp1 = "\n\nList of all commands:\n";
		Strings.PluginHelp2 = "/Emo show - show the window.\n";
		Strings.PluginHelp3 = "/Emo hide - hide the window.\n";
		Strings.PluginHelp4 = "/Emo options - display the options window.\n";
		Strings.PluginHelp5 = "/Emo clear - delete all shortcuts.\n";
		Strings.PluginHelp6 = "/Emo default fill up with basic emotes\n";
		Strings.PluginHelp7 = "/Emo lock to lock or unlock the icons\n";
		Strings.PluginHelp8 = "/Emo toggle - display or hide the window\n";
		Strings.PluginHelp9 = "/Emo alt - Activate or deactivate the alt key to move the icon.\n\n";
		Strings.PluginHelp10 = "Right click the icon to show the options panel";
		------------------------------------------------------------------------------------------
		-- command text  --
		------------------------------------------------------------------------------------------
		Strings.PluginWindowShow = "show the window.";
		Strings.PluginWindowHide = "hide the window.";
		Strings.PluginWindowClear = "delete all shortcuts.";
		------------------------------------------------------------------------------------------
		-- option window --
		------------------------------------------------------------------------------------------
		Strings.PluginOption1 = "Number of lines";
		Strings.PluginOption2 = "Number of slots per line";
		Strings.PluginOption3 = "Automatically close the window with a click on the emote";
		Strings.PluginOption4 = "Auto closing";
		Strings.PluginOption10 = "Validate Changes";
	end
end
