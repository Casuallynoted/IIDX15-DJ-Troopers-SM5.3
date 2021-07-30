local t = Def.ActorFrame{
	-- P1 TIME
	LoadActor("_HIBANA")..{
	InitCommand=cmd(x,12;y,SCREEN_CENTER_Y-140);
	OnCommand=cmd(addy,430;rotationz,-90;sleep,.25;linear,.2;addy,-430;linear,.2;addy,-300);
	};
	LoadActor("_HIBANA")..{
	InitCommand=cmd(x,16;y,SCREEN_CENTER_Y+10);
	OnCommand=cmd(addy,-430;rotationz,90;sleep,.25;linear,.2;addy,430;linear,.05;addy,56;sleep,.03;addy,999);
	};
	-- P2 TIME
	LoadActor("_HIBANA")..{
	InitCommand=cmd(x,628;y,SCREEN_CENTER_Y-140);
	OnCommand=cmd(addy,430;rotationz,-90;sleep,.25;linear,.2;addy,-430;linear,.2;addy,-300);
	};
	LoadActor("_HIBANA")..{
	InitCommand=cmd(x,624;y,SCREEN_CENTER_Y+10);
	OnCommand=cmd(addy,-430;rotationz,90;sleep,.25;linear,.2;addy,430;linear,.05;addy,56;sleep,.03;addy,999);
	};
	-- 
	LoadActor("FLARE")..{
	InitCommand=cmd(x,249;y,SCREEN_CENTER_Y+194;blend,'BlendMode_Add');
	OnCommand=cmd(diffusealpha,0;sleep,.3;diffusealpha,1;sleep,.05;linear,.05;diffusealpha,0);
	};
	LoadActor("SPARK_EF2")..{
	InitCommand=cmd(horizalign,right;x,240;y,SCREEN_CENTER_Y+190;blend,'BlendMode_Add');
	OnCommand=cmd(zoom,.4;diffusealpha,0;sleep,.3;diffusealpha,1;linear,.1;y,420;zoom,.9;linear,.1;zoom,1;diffusealpha,0);
	};
	
	LoadActor("FLARE")..{
	InitCommand=cmd(x,391;y,SCREEN_CENTER_Y+194;blend,'BlendMode_Add');
	OnCommand=cmd(diffusealpha,0;sleep,.3;diffusealpha,1;sleep,.05;linear,.05;diffusealpha,0);
	};
	LoadActor("SPARK_EF3")..{
	InitCommand=cmd(horizalign,left;x,400;y,SCREEN_CENTER_Y+190;blend,'BlendMode_Add');
	OnCommand=cmd(zoom,.4;diffusealpha,0;sleep,.3;diffusealpha,1;linear,.1;y,420;zoom,.9;linear,.1;zoom,1;diffusealpha,0);
	};
	--layer5
	LoadActor("_HIBANA")..{
	InitCommand=cmd(x,236;y,SCREEN_CENTER_Y+172;blend,'BlendMode_Add');
	OnCommand=cmd(addy,-5;addx,-280;sleep,.2;linear,.1;addx,180;linear,.05;addy,5;addx,20;linear,.1;addx,80;sleep,0;addy,999);
	};
	LoadActor("P_SHOCK")..{
	InitCommand=cmd(x,236;y,SCREEN_CENTER_Y+172;blend,'BlendMode_Add');
	OnCommand=cmd(diffusealpha,0;zoom,.4;sleep,.40;diffusealpha,1;linear,.1;zoom,.9;linear,.05;zoom,1.5;diffusealpha,0);
	};
	LoadActor("P_SHOCK")..{
	InitCommand=cmd(x,236;y,SCREEN_CENTER_Y+172;blend,'BlendMode_Add');
	OnCommand=cmd(diffusealpha,0;zoom,.4;sleep,.40;diffusealpha,1;linear,.1;zoom,.9;linear,.05;zoom,1.5;diffusealpha,0);
	};
	
	--layer8
	LoadActor("_HIBANA")..{
	InitCommand=cmd(x,404;y,SCREEN_CENTER_Y+172;blend,'BlendMode_Add');
	OnCommand=cmd(addy,-5;addx,280;sleep,.2;linear,.1;addx,-180;linear,.05;addy,5;addx,-20;linear,.1;addx,-80;sleep,0;addy,999);
	};
	LoadActor("P_SHOCK")..{
	InitCommand=cmd(x,404;y,SCREEN_CENTER_Y+172;blend,'BlendMode_Add');
	OnCommand=cmd(diffusealpha,0;zoom,.4;sleep,.40;diffusealpha,1;linear,.1;zoom,.9;linear,.05;zoom,1.5;diffusealpha,0);
	};
	LoadActor("P_SHOCK")..{
	InitCommand=cmd(x,404;y,SCREEN_CENTER_Y+172;blend,'BlendMode_Add');
	OnCommand=cmd(diffusealpha,0;zoom,.4;sleep,.40;diffusealpha,1;linear,.1;zoom,.9;linear,.05;zoom,1.5;diffusealpha,0);
	};
	
	--layer11
	LoadActor("SPARK_EF.png")..{
	InitCommand=cmd(x,130;y,SCREEN_CENTER_Y+167;blend,'BlendMode_Add');
	OnCommand=cmd(diffusealpha,0;sleep,.3;diffusealpha,1;linear,.2;zoomx,30;linear,.2;diffusealpha,0);
	};
	LoadActor("SPARK_EF.png")..{
	InitCommand=cmd(x,510;y,SCREEN_CENTER_Y+167;blend,'BlendMode_Add');
	OnCommand=cmd(diffusealpha,0;sleep,.3;diffusealpha,1;linear,.2;zoomx,30;linear,.2;diffusealpha,0);
	};
	
	--layer13
	LoadActor("SPARK_EF3")..{
	InitCommand=cmd(horizalign,left;x,30;y,SCREEN_CENTER_Y+60;blend,'BlendMode_Add';rotationz,90);
	OnCommand=cmd(zoom,.4;diffusealpha,0;sleep,.52;diffusealpha,1;linear,.1;zoom,1;linear,.02;zoom,1.4;diffusealpha,0);
	};
	LoadActor("P_SHOCK")..{
	InitCommand=cmd(x,20;y,SCREEN_CENTER_Y-60;blend,'BlendMode_Add');
	OnCommand=cmd(diffusealpha,0;zoom,.4;sleep,.4;diffusealpha,1;linear,.1;zoom,1;linear,.05;zoom,1.4;diffusealpha,0);
	};
	LoadActor("SPARK_EF.png")..{
	InitCommand=cmd(x,20;y,SCREEN_CENTER_Y-60;blend,'BlendMode_Add';rotationz,90);
	OnCommand=cmd(zoomx,0;sleep,.4;linear,.1;zoomx,30;linear,.3;diffusealpha,0);
	};
	
	--layer20
	LoadActor("SPARK_EF2")..{
	InitCommand=cmd(horizalign,right;x,610;y,SCREEN_CENTER_Y+60;blend,'BlendMode_Add';rotationz,-90);
	OnCommand=cmd(zoom,.4;diffusealpha,0;sleep,.52;diffusealpha,1;linear,.1;zoom,1;linear,.02;zoom,1.4;diffusealpha,0);
	};
	LoadActor("P_SHOCK")..{
	InitCommand=cmd(x,620;y,SCREEN_CENTER_Y-60;blend,'BlendMode_Add');
	OnCommand=cmd(diffusealpha,0;zoom,.4;sleep,.4;diffusealpha,1;linear,.1;zoom,1;linear,.05;zoom,1.4;diffusealpha,0);
	};
	LoadActor("SPARK_EF.png")..{
	InitCommand=cmd(x,620;y,SCREEN_CENTER_Y-60;blend,'BlendMode_Add';rotationz,90);
	OnCommand=cmd(zoomx,0;sleep,.4;linear,.1;zoomx,30;linear,.3;diffusealpha,0);
	};
	
};

return t;