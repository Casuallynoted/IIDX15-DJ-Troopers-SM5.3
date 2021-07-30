local t = Def.ActorFrame {
	InitCommand=cmd(fov,120),
	LoadActor("a.txt")..{
		OnCommand=cmd(x,320;y,240;addx,0;linear,.8;zoom,100;rotationy,-40;rotationx,-25;addz,5;);
	};
	LoadActor("b.txt")..{
		OnCommand=cmd(x,320;y,240;addx,0;linear,.8;zoom,100;rotationy,-40;rotationx,-25;addz,5;);
	};
};
return t;