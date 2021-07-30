local t = Def.ActorFrame{
	LoadActor("1st")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;playcommand,"Animate");
		AnimateCommand=cmd(x,192;y,449;sleep,2;linear,.35;addy,-14;croptop,1;diffusealpha,0;sleep,0;diffusealpha,1;croptop,0;cropbottom,1;sleep,.1;addy,28;linear,.35;addy,-14;cropbottom,0;queuecommand,"Animate");
		Condition=GAMESTATE:GetCurrentStageIndex() == 0 and not GAMESTATE:IsEventMode() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2();
	};
	LoadActor("2nd")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;playcommand,"Animate");
		AnimateCommand=cmd(x,192;y,449;sleep,2;linear,.35;addy,-14;croptop,1;diffusealpha,0;sleep,0;diffusealpha,1;croptop,0;cropbottom,1;sleep,.1;addy,28;linear,.35;addy,-14;cropbottom,0;queuecommand,"Animate");
		Condition=GAMESTATE:GetCurrentStageIndex() == 1 and not GAMESTATE:IsEventMode() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2();
	};
	LoadActor("3rd")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;playcommand,"Animate");
		AnimateCommand=cmd(x,192;y,449;sleep,2;linear,.35;addy,-14;croptop,1;diffusealpha,0;sleep,0;diffusealpha,1;croptop,0;cropbottom,1;sleep,.1;addy,28;linear,.35;addy,-14;cropbottom,0;queuecommand,"Animate");
		Condition=GAMESTATE:GetCurrentStageIndex() == 2 and not GAMESTATE:IsEventMode() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2();
	};
	LoadActor("4th")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;playcommand,"Animate");
		AnimateCommand=cmd(x,192;y,449;sleep,2;linear,.35;addy,-14;croptop,1;diffusealpha,0;sleep,0;diffusealpha,1;croptop,0;cropbottom,1;sleep,.1;addy,28;linear,.35;addy,-14;cropbottom,0;queuecommand,"Animate");
		Condition=GAMESTATE:GetCurrentStageIndex() == 3 and not GAMESTATE:IsEventMode() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2();
	};
	LoadActor("5th")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;playcommand,"Animate");
		AnimateCommand=cmd(x,192;y,449;sleep,2;linear,.35;addy,-14;croptop,1;diffusealpha,0;sleep,0;diffusealpha,1;croptop,0;cropbottom,1;sleep,.1;addy,28;linear,.35;addy,-14;cropbottom,0;queuecommand,"Animate");
		Condition=GAMESTATE:GetCurrentStageIndex() == 4 and not GAMESTATE:IsEventMode() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2();
	};
	LoadActor("6th")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;playcommand,"Animate");
		AnimateCommand=cmd(x,192;y,449;sleep,2;linear,.35;addy,-14;croptop,1;diffusealpha,0;sleep,0;diffusealpha,1;croptop,0;cropbottom,1;sleep,.1;addy,28;linear,.35;addy,-14;cropbottom,0;queuecommand,"Animate");
		Condition=GAMESTATE:GetCurrentStageIndex() == 5 and not GAMESTATE:IsEventMode() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2();
	};
	-- Extra
	LoadActor("extra")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;playcommand,"Animate");
		AnimateCommand=cmd(x,192;y,449;sleep,2;linear,.35;addy,-14;croptop,1;diffusealpha,0;sleep,0;diffusealpha,1;croptop,0;cropbottom,1;sleep,.1;addy,28;linear,.35;addy,-14;cropbottom,0;queuecommand,"Animate");
		Condition=GAMESTATE:IsExtraStage() and not GAMESTATE:IsEventMode();
	};
	-- Extra2
	LoadActor("omes")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;playcommand,"Animate");
		AnimateCommand=cmd(x,192;y,449;sleep,2;linear,.35;addy,-14;croptop,1;diffusealpha,0;sleep,0;diffusealpha,1;croptop,0;cropbottom,1;sleep,.1;addy,28;linear,.35;addy,-14;cropbottom,0;queuecommand,"Animate");
		Condition=GAMESTATE:IsExtraStage2() and not GAMESTATE:IsEventMode();
	};
	-- Event
	LoadActor("2dx")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;playcommand,"Animate");
		AnimateCommand=cmd(x,192;y,449;sleep,2;linear,.35;addy,-14;croptop,1;diffusealpha,0;sleep,0;diffusealpha,1;croptop,0;cropbottom,1;sleep,.1;addy,28;linear,.35;addy,-14;cropbottom,0;queuecommand,"Animate");
		Condition=GAMESTATE:IsEventMode();
	};
};

return t;