local t = Def.ActorFrame {
	LoadActor(THEME:GetPathG("","_shared header"))..{
	};
	LoadActor(THEME:GetPathG("","_shared header/INFO_2"))..{
	};
	LoadActor(THEME:GetPathG("","_shared header/here_or_not"))..{
	};
	LoadActor("MODE_T.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X-246,SCREEN_CENTER_X-345);y,SCREEN_CENTER_Y-214);
		OnCommand=cmd(addx,-10;diffusealpha,0;sleep,0.5;linear,0.3;addx,10;diffusealpha,1);
	};
};
return t;