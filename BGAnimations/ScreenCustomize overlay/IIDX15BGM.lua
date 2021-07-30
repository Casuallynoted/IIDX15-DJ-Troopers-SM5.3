-- this controls the life meter frame stuff
local framePref = GetUserPref("IIDX15BGM");
local curIndex = 1; -- was 2

if framePref then
	local _ = { "default","led","funaki","mitsuru","taka","yoshitaka","extra" };
	for i,v in ipairs(_) do
		if v == framePref then curIndex = i; end;
	end;
else
	curIndex = 1;
end;

local frames = {
	"default",
	"led",
	"funaki",
	"mitsuru",
	"taka",
	"yoshitaka",
	"extra"
};
local numFrames = 7; -- sigh. didn't want to have to do this

local t = Def.ActorFrame{
	Def.Actor{
		Name="IIDX15BGMController";
		PlayerMenuInputMessageCommand=function(self,param)
			if param.MenuState == "MenuState_IIDX15BGM" then
				if param.Input == "Start" then
					SetUserPref("IIDX15BGM",frames[curIndex]);
					-- okay time to go back to the main menu
					MESSAGEMAN:Broadcast("MenuStateChanged",{NewState = "MenuState_Main"});
				elseif param.Input == "Back" then
					-- go back to main menu
					MESSAGEMAN:Broadcast("MenuStateChanged",{NewState = "MenuState_Main"});
				else
					-- left and right switch frames.
					if param.Input == "Left" or param.Input == "Up" then
						MESSAGEMAN:Broadcast("PreviousIIDX15BGM");
					elseif param.Input == "Right" or param.Input == "Down" then
						MESSAGEMAN:Broadcast("NextIIDX15BGM");
					end;
				end;
			end;
		end;
		NextIIDX15BGMMessageCommand=function(self)
			local prevIndex = curIndex;
			curIndex = curIndex + 1;
			if curIndex > numFrames then curIndex = 1; end;

			MESSAGEMAN:Broadcast("IIDX15BGMChanged",{NewIIDX15BGM = frames[curIndex], NewIndex = curIndex, OldIndex = prevIndex});
		end;
		PreviousIIDX15BGMMessageCommand=function(self)
			local prevIndex = curIndex;
			curIndex = curIndex - 1;
			if curIndex < 1 then curIndex = numFrames; end;

			MESSAGEMAN:Broadcast("IIDX15BGMChanged",{NewIIDX15BGM = frames[curIndex], NewIndex = curIndex, OldIndex = prevIndex});
		end;
	};
};

-- preview icon

-- the menu
local menu = Def.ActorFrame{
	Name="IIDX15BGMMenu";
	InitCommand=cmd(x,960;y,128);
	--InitCommand=cmd(x,SCREEN_WIDTH+SCREEN_CENTER_X;y,SCREEN_CENTER_Y*0.5); -- scroller
	ShowCommand=cmd(stoptweening;linear,0.2;x,456);
	HideCommand=cmd(stoptweening;linear,0.2;x,SCREEN_WIDTH+SCREEN_CENTER_X);
	MenuStateChangedMessageCommand=function(self,param)
		if param.NewState == "MenuState_IIDX15BGM" then
			self:playcommand("Show")
		elseif param.NewState == "MenuState_Main" then
			self:playcommand("Hide")
		end;
	end;

	LoadActor("list")..{
		InitCommand=cmd(y,142;x,-42);
	};
	LoadActor("_bgm_default")..{
		InitCommand=cmd(y,70;x,-170);
		BeginCommand=function(self)
			self:playcommand(curIndex == 1 and "GainFocus" or "LoseFocus");
		end;
		GainFocusCommand=cmd(stoptweening;linear,0.3;diffuse,color("1,1,1,1"));
		LoseFocusCommand=cmd(stoptweening;linear,0.3;diffuse,color("0.8,0.8,0.8,0.5"));
		IIDX15BGMChangedMessageCommand=function(self,param)
			if param.OldIndex == 1 then
				self:playcommand("LoseFocus");
			end;
			if param.NewIndex == 1 then
				self:playcommand("GainFocus");
			end;
		end;
	};

	LoadActor("_bgm_led")..{
		InitCommand=cmd(y,70;x,-45);
		BeginCommand=function(self)
			self:playcommand(curIndex == 2 and "GainFocus" or "LoseFocus");
		end;
		GainFocusCommand=cmd(stoptweening;linear,0.3;diffuse,color("1,1,1,1"));
		LoseFocusCommand=cmd(stoptweening;linear,0.3;diffuse,color("0.8,0.8,0.8,0.5"));
		IIDX15BGMChangedMessageCommand=function(self,param)
			if param.OldIndex == 2 then
				self:playcommand("LoseFocus");
			end;
			if param.NewIndex == 2 then
				self:playcommand("GainFocus");
			end;
		end;
	};

	LoadActor("_bgm_funaki")..{
		InitCommand=cmd(y,70;x,80);
		BeginCommand=function(self)
			self:playcommand(curIndex == 3 and "GainFocus" or "LoseFocus");
		end;
		GainFocusCommand=cmd(stoptweening;linear,0.3;diffuse,color("1,1,1,1"));
		LoseFocusCommand=cmd(stoptweening;linear,0.3;diffuse,color("0.8,0.8,0.8,0.5"));
		IIDX15BGMChangedMessageCommand=function(self,param)
			if param.OldIndex == 3 then
				self:playcommand("LoseFocus");
			end;
			if param.NewIndex == 3 then
				self:playcommand("GainFocus");
			end;
		end;
	};

	LoadActor("_bgm_mitsuru")..{
		InitCommand=cmd(y,145;x,-170);
		BeginCommand=function(self)
			self:playcommand(curIndex == 4 and "GainFocus" or "LoseFocus");
		end;
		GainFocusCommand=cmd(stoptweening;linear,0.3;diffuse,color("1,1,1,1"));
		LoseFocusCommand=cmd(stoptweening;linear,0.3;diffuse,color("0.8,0.8,0.8,0.5"));
		IIDX15BGMChangedMessageCommand=function(self,param)
			if param.OldIndex == 4 then
				self:playcommand("LoseFocus");
			end;
			if param.NewIndex == 4 then
				self:playcommand("GainFocus");
			end;
		end;
	};

	LoadActor("_bgm_taka")..{
		InitCommand=cmd(y,145;x,-45);
		BeginCommand=function(self)
			self:playcommand(curIndex == 5 and "GainFocus" or "LoseFocus");
		end;
		GainFocusCommand=cmd(stoptweening;linear,0.3;diffuse,color("1,1,1,1"));
		LoseFocusCommand=cmd(stoptweening;linear,0.3;diffuse,color("0.8,0.8,0.8,0.5"));
		IIDX15BGMChangedMessageCommand=function(self,param)
			if param.OldIndex == 5 then
				self:playcommand("LoseFocus");
			end;
			if param.NewIndex == 5 then
				self:playcommand("GainFocus");
			end;
		end;
	};

	LoadActor("_bgm_yoshitaka")..{
		InitCommand=cmd(y,145;x,80);
		BeginCommand=function(self)
			self:playcommand(curIndex == 6 and "GainFocus" or "LoseFocus");
		end;
		GainFocusCommand=cmd(stoptweening;linear,0.3;diffuse,color("1,1,1,1"));
		LoseFocusCommand=cmd(stoptweening;linear,0.3;diffuse,color("0.8,0.8,0.8,0.5"));
		IIDX15BGMChangedMessageCommand=function(self,param)
			if param.OldIndex == 6 then
				self:playcommand("LoseFocus");
			end;
			if param.NewIndex == 6 then
				self:playcommand("GainFocus");
			end;
		end;
	};

	LoadActor("_bgm_extra")..{
		InitCommand=cmd(y,220;x,-170);
		BeginCommand=function(self)
			self:playcommand(curIndex == 7 and "GainFocus" or "LoseFocus");
		end;
		GainFocusCommand=cmd(stoptweening;linear,0.3;diffuse,color("1,1,1,1"));
		LoseFocusCommand=cmd(stoptweening;linear,0.3;diffuse,color("0.8,0.8,0.8,0.5"));
		IIDX15BGMChangedMessageCommand=function(self,param)
			if param.OldIndex == 7 then
				self:playcommand("LoseFocus");
			end;
			if param.NewIndex == 7 then
				self:playcommand("GainFocus");
			end;
		end;
	};
};

t[#t+1] = menu;

return t;