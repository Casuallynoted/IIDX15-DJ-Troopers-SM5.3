local t = Def.ActorFrame{
	LoadActor("cover")..{ InitCommand=cmd(Center;zoomtowidth,SCREEN_WIDTH); };
	LoadActor("stuff")..{ InitCommand=cmd(Center); };
};

return t;