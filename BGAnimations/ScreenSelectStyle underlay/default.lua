local t = Def.ActorFrame {
	-- [Layer25]
	LoadActor("BG.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
		OnCommand=cmd(diffusealpha,0;linear,0.3;diffusealpha,1);
	};
	-- [Layer26]
	LoadActor("text1.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-190);
		OnCommand=cmd(diffusealpha,0;linear,0.3;diffusealpha,1);
		OffCommand=cmd(diffusealpha,0;sleep,0.0;zoomy,0;linear,0.2;zoomy,1.2;diffusealpha,1;linear,0.1;zoomy,1);
	};
	-- [Layer27]
	LoadActor("text1.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-190);
		OnCommand=cmd(diffusealpha,0);
		OffCommand=cmd(blend,'BlendMode_Add';sleep,0.2;diffusealpha,1;sleep,0.1;diffusealpha,0);
	};
	-- [Layer28]
	LoadActor("text2.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+135;visible,GAMESTATE:GetCurrentGame():GetName() ~= "pump");
		OnCommand=cmd(zoomy,0;linear,0.3;zoomy,1;);
		OffCommand=cmd(linear,0.3;addy,20;diffusealpha,0);
	};
	-- [Layer29]
	LoadActor("time_remain.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+164);
		OnCommand=cmd(zoomy,0;linear,0.3;zoomy,1;);
	};
};
return t