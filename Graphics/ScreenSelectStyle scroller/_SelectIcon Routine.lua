local t = Def.ActorFrame {
	LoadActor("routine.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+180;y,SCREEN_CENTER_Y+80);
		OnCommand=cmd(zoom,0;bounceend,0.35;zoom,.8);
		GainFocusCommand=cmd(stoptweening;bounceend,0.125;zoom,1;);
		LoseFocusCommand=cmd(stoptweening;decelerate,0.25;zoom,0.8;);
		DisabledCommand=cmd(diffusealpha,.6);
		EnabledCommand=cmd(diffusealpha,1);
	};
};

return t;