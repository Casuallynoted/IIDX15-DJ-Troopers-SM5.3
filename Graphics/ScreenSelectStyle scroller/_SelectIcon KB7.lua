local t = Def.ActorFrame {
	LoadActor("KB7.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-16);
		OnCommand=cmd(zoom,0;bounceend,0.35;zoom,1);
	};
	LoadActor("cursor.png")..{
		InitCommand=cmd(blend,'BlendMode_Add';x,SCREEN_CENTER_X-1;y,SCREEN_CENTER_Y-16);
		OnCommand=cmd(zoom,0;bounceend,0.35;zoom,1);
	};
};

return t;