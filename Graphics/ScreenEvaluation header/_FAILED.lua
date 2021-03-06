local t = Def.ActorFrame{
	LoadActor("failed")..{
	InitCommand=cmd(x,320;y,140);
	OnCommand=cmd(diffusealpha,0;zoomx,20;sleep,0.5;linear,0.2;diffusealpha,1;zoomx,1;sleep,0.5;linear,0.1;diffusealpha,0);
	};
	LoadActor("failed")..{
	InitCommand=cmd(blend,'BlendMode_Add';x,320;y,140);
	OnCommand=cmd(diffusealpha,0;sleep,1.1;linear,0.2;diffusealpha,1;linear,0.1;zoomy,0);
	};
	LoadActor("line")..{
	InitCommand=cmd(x,320;y,140);
	OnCommand=cmd(diffusealpha,0;sleep,1.3;linear,0.1;diffusealpha,1;linear,0.2;zoomx,20;diffusealpha,0);
	};
	LoadActor("line")..{
	InitCommand=cmd(zoomtowidth,380;x,380;y,190);
	OnCommand=cmd(x,-640;sleep,0.8;linear,0.3;x,900);
	};
	LoadActor("line")..{
	InitCommand=cmd(zoomtowidth,380;x,380;y,90);
	OnCommand=cmd(x,900;sleep,0.8;linear,0.3;x,-640);
	};
	LoadActor("DJLV1")..{
	InitCommand=cmd(x,140;y,188);
	OnCommand=cmd(diffusealpha,0;zoomy,0;sleep,2;linear,0.2;diffusealpha,1;zoomy,1.2;linear,0.1;zoomy,1);
	Condition=GAMESTATE:IsSideJoined(PLAYER_1);
	};
	LoadActor("DJLV2")..{
	InitCommand=cmd(x,501;y,188);
	OnCommand=cmd(diffusealpha,0;zoomy,0;sleep,2;linear,0.2;diffusealpha,1;zoomy,1.2;linear,0.1;zoomy,1);
	Condition=GAMESTATE:IsSideJoined(PLAYER_2);
	};
};

return t;