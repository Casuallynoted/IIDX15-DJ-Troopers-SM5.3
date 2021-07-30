local t = Def.ActorFrame {
	LoadActor("double.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+200;y,SCREEN_CENTER_Y-10;visible,GAMESTATE:GetCurrentGame():GetName() == "dance");
		OnCommand=cmd(zoom,0;bounceend,0.35;zoom,1);
		GainFocusCommand=cmd(stoptweening);
		LoseFocusCommand=cmd(stoptweening);
		DisabledCommand=cmd(diffusealpha,.6);
		EnabledCommand=cmd(diffusealpha,1);
	};
	LoadActor("cursor-dance.png")..{
		InitCommand=cmd(blend,'BlendMode_Add';x,SCREEN_CENTER_X+199;y,SCREEN_CENTER_Y-10;visible,GAMESTATE:GetCurrentGame():GetName() == "dance");
		OnCommand=cmd(diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;diffusealpha,1);
		LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
		DisabledCommand=cmd(diffusealpha,0);
		EnabledCommand=cmd(diffusealpha,1);
	};
	LoadActor("double_pump.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-80;visible,GAMESTATE:GetCurrentGame():GetName() == "pump");
		OnCommand=cmd(zoom,0;bounceend,0.35;zoom,.8);
		GainFocusCommand=cmd(stoptweening;bounceend,0.125;zoom,1;);
		LoseFocusCommand=cmd(stoptweening;decelerate,0.25;zoom,0.8;);
		DisabledCommand=cmd(diffusealpha,.6);
		EnabledCommand=cmd(diffusealpha,1);
	};
};

return t;