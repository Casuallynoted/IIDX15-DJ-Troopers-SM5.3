return Def.ActorFrame {
	LoadActor("1.png")..{
	InitCommand=cmd(visible,GAMESTATE:GetPlayMode() == 'PlayMode_Regular');
	};
	LoadActor("course_wheel.png")..{
	InitCommand=cmd(visible,GAMESTATE:GetPlayMode() == 'PlayMode_Nonstop' or GAMESTATE:GetPlayMode() == 'PlayMode_Oni';addx,-16);
	};
}