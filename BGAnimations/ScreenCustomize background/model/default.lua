local t = Def.ActorFrame {
	InitCommand=cmd(fov,120;addy,100),
	LoadActor("box.txt")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-100;zoom,400;rotationy,60;rotationx,55;addz,140);
	};
	LoadActor("gate.txt")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-150;zoom,400;rotationy,60;rotationx,55;addz,-80);
	};
};
return t;