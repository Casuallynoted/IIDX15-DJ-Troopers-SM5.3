local t = Def.ActorFrame {
	InitCommand=cmd(fov,120),
	LoadActor("../_expert/a.txt")..{
		OnCommand=cmd(x,320;y,240;addx,20;linear,.8;zoom,100;rotationy,48;rotationx,-25;addz,5;cullmode,'CullMode_Back');
	};
	LoadActor("../_expert/b.txt")..{
		OnCommand=cmd(x,320;y,240;addx,20;linear,.8;zoom,100;rotationy,48;rotationx,-25;addz,5;cullmode,'CullMode_Back');
	};
};
return t;