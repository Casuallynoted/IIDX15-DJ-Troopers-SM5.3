local curState = "MenuState_Main";
-- curState can be one of:
local MenuStates = {
	MenuState_Main,				-- choose one of the menu options
	MenuState_IIDX15BGM,		-- changing bgm
	MenuState_IIDX15Frame,		-- changing frame
	MenuState_IIDX15Turntable,	-- changing turntable
	MenuState_IIDX15Explosion,	-- changing explosion
	MenuState_Finished			-- game overs
};

local curIndex = 2;
local MenuChoices = {
	"IIDX15BGM",
	"IIDX15Frame",
	"IIDX15Turntable",
	"IIDX15Explosion"
};

local menuC;

local t = Def.ActorFrame{
	InitCommand=function(self)
		menuC = self:GetChildren();
	end;
	Def.Actor{
		Name="MenuController";
		MenuInputMessageCommand=function(self,param)
			if GAMESTATE:IsHumanPlayer(param.Player) then
				if curState == "MenuState_Main" then
					if param.Input == "Start" then
						if curIndex == 1 then
							curState = "MenuState_IIDX15BGM";
						elseif curIndex == 2 then
							curState = "MenuState_IIDX15Frame";
						elseif curIndex == 3 then
							curState = "MenuState_IIDX15Turntable";
						elseif curIndex == 4 then
							curState = "MenuState_IIDX15Explosion";
						end;

						MESSAGEMAN:Broadcast("MenuStateChanged",{ NewState = curState; });
					elseif param.Input == "Back" then
						-- in MenuState_Main, we quit.
						SCREENMAN:GetTopScreen():Cancel()
					elseif param.Input == "Up" then
						if curIndex == 1 then curIndex = #MenuChoices;
						else curIndex = curIndex - 1;
						end;

						local curItemName = MenuChoices[curIndex];
						local lastIndex = (curIndex == #MenuChoices) and 1 or curIndex+1;
						local prevItemName = MenuChoices[lastIndex];

						MESSAGEMAN:Broadcast("MainMenuFocusChanged",{Gain = curItemName, Lose = prevItemName});
						menuC[curItemName]:playcommand("GainFocus");
						menuC[prevItemName]:playcommand("LoseFocus");
					elseif param.Input == "Down" then
						if curIndex == #MenuChoices then curIndex = 1;
						else curIndex = curIndex + 1;
						end;

						local curItemName = MenuChoices[curIndex];
						local lastIndex = (curIndex == 1) and #MenuChoices or curIndex-1;
						local prevItemName = MenuChoices[lastIndex];

						MESSAGEMAN:Broadcast("MainMenuFocusChanged",{Gain = curItemName, Lose = prevItemName});
						menuC[curItemName]:playcommand("GainFocus");
						menuC[prevItemName]:playcommand("LoseFocus");
					else
						--Trace("Input ".. param.Input .." not implemented on main menu");
					end;
				else
					-- if we're not on the main menu, we want to send the
					-- input messages so effort isn't duplicated elsewhere.
					local inputParam = {
						Player = param.Player,
						Input = param.Input,
						Choice = curChoice,
						MenuState = curState
					};
					-- broadcast an input message so other elements can access it
					MESSAGEMAN:Broadcast("PlayerMenuInput",inputParam);
				end;
			end;
		end;
		MenuUpP1MessageCommand=function(self) MESSAGEMAN:Broadcast("MenuInput", { Player = PLAYER_1, Input = "Up", }); end;
		MenuUpP2MessageCommand=function(self) MESSAGEMAN:Broadcast("MenuInput", { Player = PLAYER_2, Input = "Up", }); end;
		MenuDownP1MessageCommand=function(self) MESSAGEMAN:Broadcast("MenuInput", { Player = PLAYER_1, Input = "Down", }); end;
		MenuDownP2MessageCommand=function(self) MESSAGEMAN:Broadcast("MenuInput", { Player = PLAYER_2, Input = "Down", }); end;
		MenuLeftP1MessageCommand=function(self) MESSAGEMAN:Broadcast("MenuInput", { Player = PLAYER_1, Input = "Left", }); end;
		MenuLeftP2MessageCommand=function(self) MESSAGEMAN:Broadcast("MenuInput", { Player = PLAYER_2, Input = "Left", }); end;
		MenuRightP1MessageCommand=function(self) MESSAGEMAN:Broadcast("MenuInput", { Player = PLAYER_1, Input = "Right", }); end;
		MenuRightP2MessageCommand=function(self) MESSAGEMAN:Broadcast("MenuInput", { Player = PLAYER_2, Input = "Right", }); end;
		-- via codes
		CodeMessageCommand=function(self,param)
			MESSAGEMAN:Broadcast("MenuInput", { Player = param.PlayerNumber, Input = param.Name })
		end;
		MenuStateChangedMessageCommand=function(self,param)
			local curItemName = MenuChoices[curIndex];
			if param.NewState == 'MenuState_Main' then
				menuC[curItemName]:playcommand("FinishedEditing");
				-- restore all dimmed items
				for idx, nam in pairs(MenuChoices) do
					if nam ~= "Exit" and nam ~= curItemName then
						menuC[nam]:playcommand("UnfocusedOut");
					end;
				end;
			else
				menuC[curItemName]:playcommand("StartedEditing");
				-- dim all non-selected items
				for idx, nam in pairs(MenuChoices) do
					if nam ~= "Exit" and nam ~= curItemName then
						menuC[nam]:playcommand("UnfocusedIn");
					end;
				end;
			end;
			curState = param.NewState;
		end;
		OffCommand=function(self) setenv("PHOTwONSpecialEditMode",false); end;
	};
};

-- Preview
t[#t+1] = LoadActor("Preview");

-- Frame Styles
t[#t+1] = LoadActor("IIDX15Frame");
t[#t+1] = LoadActor("_menuitem frame")..{
	Name="IIDX15Frame";
	InitCommand=cmd(x,512;y,208);
	OnCommand=cmd(queuecommand,"GainFocus");
	GainFocusCommand=cmd(stoptweening;linear,.1;x,480);
	LoseFocusCommand=cmd(stoptweening;linear,.1;x,512);
	StartedEditingCommand=cmd(stoptweening;decelerate,0.3;x,408;y,124);
	FinishedEditingCommand=cmd(stoptweening;decelerate,0.3;x,480;y,208);
	UnfocusedInCommand=cmd(stoptweening;accelerate,0.3;x,960);
	UnfocusedOutCommand=cmd(stoptweening;decelerate,0.3;x,512);
};

-- Turntable Styles
t[#t+1] = LoadActor("IIDX15Turntable");
t[#t+1] = LoadActor("_menuitem turntable")..{
	Name="IIDX15Turntable";
	InitCommand=cmd(x,512;y,263);
	OnCommand=cmd(stoptweening);
	GainFocusCommand=cmd(stoptweening;linear,.1;x,480);
	LoseFocusCommand=cmd(stoptweening;linear,.1;x,512);
	StartedEditingCommand=cmd(stoptweening;decelerate,0.3;x,408;y,124);
	FinishedEditingCommand=cmd(stoptweening;decelerate,0.3;x,480;y,263);
	UnfocusedInCommand=cmd(stoptweening;accelerate,0.3;x,960);
	UnfocusedOutCommand=cmd(stoptweening;decelerate,0.3;x,512);
};

-- Explosion Styles
t[#t+1] = LoadActor("IIDX15Explosion");
t[#t+1] = LoadActor("_menuitem explosion")..{
	Name="IIDX15Explosion";
	InitCommand=cmd(x,512;y,318);
	OnCommand=cmd(stoptweening);
	GainFocusCommand=cmd(stoptweening;linear,.1;x,480);
	LoseFocusCommand=cmd(stoptweening;linear,.1;x,512);
	StartedEditingCommand=cmd(stoptweening;decelerate,0.3;x,408;y,124);
	FinishedEditingCommand=cmd(stoptweening;decelerate,0.3;x,480;y,318);
	UnfocusedInCommand=cmd(stoptweening;accelerate,0.3;x,960);
	UnfocusedOutCommand=cmd(stoptweening;decelerate,0.3;x,512);
};

-- BGM
t[#t+1] = LoadActor("IIDX15BGM");
t[#t+1] = LoadActor("_menuitem bgm")..{
	Name="IIDX15BGM";
	InitCommand=cmd(x,512;y,153);
	OnCommand=cmd(stoptweening);
	GainFocusCommand=cmd(stoptweening;linear,.1;x,480);
	LoseFocusCommand=cmd(stoptweening;linear,.1;x,512);
	StartedEditingCommand=cmd(stoptweening;decelerate,0.3;x,408;y,124);
	FinishedEditingCommand=cmd(stoptweening;decelerate,0.3;x,480;y,153);
	UnfocusedInCommand=cmd(stoptweening;accelerate,0.3;x,960);
	UnfocusedOutCommand=cmd(stoptweening;decelerate,0.3;x,512);
};

return t;