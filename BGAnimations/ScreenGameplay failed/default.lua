local t = Def.ActorFrame{
	LoadActor("failed")..{
	InitCommand=cmd(zoomx,SCREEN_WIDTH/640);
	};
};

return t;