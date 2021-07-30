local t = Def.ActorFrame {
	InitCommand=cmd(fov,110;addy,360),
	LoadActor("_white.png")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
	};
	LoadActor("box.txt")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-380;zoomz,3;zoom,300;rotationx,50;rotationy,90;addz,380);
	};
	LoadActor("gate.txt")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-60;zoomz,3;zoom,300;rotationx,50;rotationy,90;addz,-20);
	};
};
return t;