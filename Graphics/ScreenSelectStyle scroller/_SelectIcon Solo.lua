local t = Def.ActorFrame {
	LoadActor("solo.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-10);
		OnCommand=cmd(zoom,0;bounceend,0.35;zoom,1);
		GainFocusCommand=cmd(stoptweening);
		LoseFocusCommand=cmd(stoptweening);
		DisabledCommand=cmd(diffusealpha,0);
		EnabledCommand=cmd(diffusealpha,1);
	};
	LoadActor("cursor-dance.png")..{
		InitCommand=cmd(blend,'BlendMode_Add';x,SCREEN_CENTER_X-1;y,SCREEN_CENTER_Y-10);
		OnCommand=cmd(diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;diffusealpha,1);
		LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
		DisabledCommand=cmd(diffusealpha,0);
		EnabledCommand=cmd(diffusealpha,1);
	};
};

return t;