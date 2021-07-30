local t = Def.ActorFrame {
	LoadActor("14keys.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+125;y,SCREEN_CENTER_Y-16;visible,GAMESTATE:GetCurrentGame():GetName() == "beat");
		OnCommand=cmd(diffusealpha,0);
		GainFocusCommand=cmd(stoptweening);
		LoseFocusCommand=cmd(stoptweening);
		DisabledCommand=cmd(diffusealpha,0.6);
		EnabledCommand=cmd(diffusealpha,1);
	};
};

return t;