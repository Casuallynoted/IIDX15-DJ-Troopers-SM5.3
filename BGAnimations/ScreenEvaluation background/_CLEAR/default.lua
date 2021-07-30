local t = Def.ActorFrame{
	LoadActor("LOOP_BG2")..{
	InitCommand=cmd(x,320;y,SCREEN_CENTER_Y);
	OnCommand=cmd(zoomy,1.1;diffusealpha,.6;texcoordvelocity,0,.1);
	};
	LoadActor("LOOP_BG3")..{
	InitCommand=cmd(x,320;y,SCREEN_CENTER_Y);
	OnCommand=cmd(diffusealpha,.2;texcoordvelocity,0,.2);
	};
	LoadActor("LOOP_BG1")..{
	InitCommand=cmd(x,320;y,SCREEN_CENTER_Y);
	OnCommand=cmd(diffusealpha,.2;texcoordvelocity,0,.3);
	};
	LoadActor("LOOP_BG2")..{
	InitCommand=cmd(x,320;y,SCREEN_CENTER_Y);
	OnCommand=cmd(diffuse,0,0,0,1;sleep,.3;diffusealpha,0);
	};
	LoadActor("LOOP_BG2")..{
	InitCommand=cmd(x,320;y,SCREEN_CENTER_Y);
	OnCommand=cmd(texcoordvelocity,0,1;zoomy,100;sleep,.3;diffusealpha,0);
	};
	LoadActor("GREENBALL")..{
	InitCommand=cmd(blend,'BlendMode_Add';x,320;y,SCREEN_CENTER_Y);
	OnCommand=cmd(diffusealpha,1;zoom,3;zoomx,100;zoomy,4);
	};
	LoadActor("BLUEBALL")..{
	InitCommand=cmd(blend,'BlendMode_Add';x,320;y,SCREEN_CENTER_Y);
	OnCommand=cmd(diffusealpha,1;zoom,3;zoomx,100;zoomy,4);
	};
	LoadActor("ring")..{
	InitCommand=cmd(x,320;y,SCREEN_CENTER_Y);
	OnCommand=cmd(zoom,.5;diffusealpha,0;linear,.4;diffusealpha,1;zoom,1);
	};
};

return t;