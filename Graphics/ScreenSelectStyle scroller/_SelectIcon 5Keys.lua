local t = Def.ActorFrame {
	LoadActor("5keys.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-125;y,SCREEN_CENTER_Y-16;visible,GAMESTATE:GetCurrentGame():GetName() == "beat");
		OnCommand=cmd(addx,-SCREEN_WIDTH/2;linear,0.3;addx,SCREEN_WIDTH/2);
		GainFocusCommand=cmd(stoptweening);
		LoseFocusCommand=cmd(stoptweening);
		DisabledCommand=cmd(diffusealpha,0);
		EnabledCommand=cmd(diffusealpha,1);
	};
	LoadActor("cursor.png")..{
		InitCommand=cmd(blend,'BlendMode_Add';x,SCREEN_CENTER_X-126;y,SCREEN_CENTER_Y-16;visible,GAMESTATE:GetCurrentGame():GetName() == "beat");
		OnCommand=cmd(addx,-SCREEN_WIDTH/2;linear,0.3;addx,SCREEN_WIDTH/2);
		GainFocusCommand=cmd(stoptweening;diffusealpha,1);
		LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
		DisabledCommand=cmd(diffusealpha,0);
		EnabledCommand=cmd(diffusealpha,1);
	};
};

return t;