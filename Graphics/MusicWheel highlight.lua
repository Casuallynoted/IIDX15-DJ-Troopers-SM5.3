return Def.ActorFrame {
	LoadActor("_MusicWheel highlight_normal.png")..{
	InitCommand=cmd(blend,'BlendMode_Add';visible,GAMESTATE:GetPlayMode() == 'PlayMode_Regular');
	};
	LoadActor("_MusicWheel highlight_course.png")..{
	InitCommand=cmd(blend,'BlendMode_Add';visible,GAMESTATE:GetPlayMode() == 'PlayMode_Nonstop' or GAMESTATE:GetPlayMode() == 'PlayMode_Oni';addx,-32);
	};
}