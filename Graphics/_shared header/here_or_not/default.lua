local t = Def.ActorFrame {
	LoadActor("not-here1")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X-197,SCREEN_CENTER_X-297);y,SCREEN_CENTER_Y+188);
		OnCommand=cmd(addx,-300;linear,0.25;addx,300);
	};
	LoadActor("not-here2")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X+197,SCREEN_CENTER_X+297);y,SCREEN_CENTER_Y+188);
		OnCommand=cmd(addx,300;linear,0.25;addx,-300);
	};
	LoadActor("here1.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X-197,SCREEN_CENTER_X-297);y,SCREEN_CENTER_Y+188);
		OnCommand=cmd(addx,-300;linear,0.25;addx,300);
		Condition=GAMESTATE:IsSideJoined(PLAYER_1);
	};
	LoadActor("here2.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X+197,SCREEN_CENTER_X+297);y,SCREEN_CENTER_Y+188);
		OnCommand=cmd(addx,300;linear,0.25;addx,-300);
		Condition=GAMESTATE:IsSideJoined(PLAYER_2);
	};
};

return t;