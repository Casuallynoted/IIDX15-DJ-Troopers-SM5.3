return Def.ActorFrame {
	LoadActor("song")..{
	InitCommand=cmd(visible,GAMESTATE:GetPlayMode() == 'PlayMode_Regular');
	};
	LoadActor("course")..{
	InitCommand=cmd(visible,GAMESTATE:GetPlayMode() == 'PlayMode_Nonstop' or GAMESTATE:GetPlayMode() == 'PlayMode_Oni');
	};
}