------------------------------------------------------------------------------------------
-- UI file
-- Written by Homeopatix
-- 7 january 2021
------------------------------------------------------------------------------------------
-- create the window
------------------------------------------------------------------------------------------
centerWindow = {};
centerLabel = {};
centerQS = {};

function GenerateWindow()

		local horizontalPosition = 20 ;
		local verticalPosition = 40;
		local nbrSlot = 0;
		local windowWidth = (settings["nbrSlots"]["nbr"] * 42) + 38;
		local windowHeight = (settings["nbrLine"]["nbr"] * 42) + 60;
		local totalSlots = tonumber(settings["nbrSlots"]["nbr"]) * tonumber(settings["nbrLine"]["nbr"]);

		EmotesHelperWindow=Turbine.UI.Lotro.GoldWindow(); 
		EmotesHelperWindow:SetSize(windowWidth, windowHeight); 
		EmotesHelperWindow:SetText(Strings.PluginName); 

		EmotesHelperWindow.Message=Turbine.UI.Label(); 
		EmotesHelperWindow.Message:SetParent(EmotesHelperWindow); 
		EmotesHelperWindow.Message:SetSize(150,10); 
		EmotesHelperWindow.Message:SetPosition(windowWidth/2 - 75, windowHeight - 20 ); 
		EmotesHelperWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		EmotesHelperWindow.Message:SetText(Strings.PluginText); 

		EmotesHelperWindow:SetZOrder(0);
		EmotesHelperWindow:SetWantsKeyEvents(true);

		EmotesHelperWindow:SetWantsUpdates(true);

		EmotesHelperWindow:SetPosition(settings["windowPosition"]["xPos"], settings["windowPosition"]["yPos"]);

		------------------------------------------------------------------------------------------
		-- center window --
		------------------------------------------------------------------------------------------

		for i=1, totalSlots do
			if(nbrSlot == tonumber(settings["nbrSlots"]["nbr"]))then
				verticalPosition = verticalPosition + 42;
				nbrSlot = 0;
				horizontalPosition = 20;
			end
			
			centerWindow[i] = Turbine.UI.Extensions.SimpleWindow();
			centerWindow[i]:SetSize( 40 , 40 );
			centerWindow[i]:SetParent( EmotesHelperWindow );
			centerWindow[i]:SetPosition( horizontalPosition , verticalPosition);
			centerWindow[i]:SetVisible( true );
			centerWindow[i]:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );

			centerLabel = Turbine.UI.Label();
			centerLabel:SetParent(centerWindow[i]);
			centerLabel:SetPosition( 0, 0 );
			centerLabel:SetSize( 40, 40  );
			centerLabel:SetText( "" );
			centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
			centerLabel:SetZOrder(-1);
			centerLabel:SetMouseVisible(false);

			centerQS[i] = Turbine.UI.Lotro.Quickslot();
			centerQS[i]:SetParent( centerWindow[i] );
			centerQS[i]:SetPosition( 1, 1 );
			centerQS[i]:SetSize( 36, 36 );
			centerQS[i]:SetUseOnRightClick(false);

			nbrSlot = nbrSlot + 1;
			horizontalPosition = horizontalPosition + 42;

		end
------------------------------------------------------------------------------------------
-- setting the datas	
------------------------------------------------------------------------------------------
	SettingTheShortCuts();
	DragAndDrop();
	DeleteShortCutes();
	if(settings["autoClosing"]["value"] == true)then
		MouseClickHandler();
	end
	EscapeKeyPressed();
	ClosingTheWindow();
end