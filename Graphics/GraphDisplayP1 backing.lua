return Def.ActorFrame {
	--P1
	LoadActor("graph/BGEASY.png")..{
	InitCommand=cmd(zoomtowidth,1;zoomtoheight,1;visible,(GAMESTATE:GetCurrentSteps(PLAYER_1):GetDifficulty() == 'Difficulty_Beginner'));
	};
	LoadActor("graph/BGEASY.png")..{
	InitCommand=cmd(zoomtowidth,1;zoomtoheight,1;visible,(GAMESTATE:GetCurrentSteps(PLAYER_1):GetDifficulty() == 'Difficulty_Easy'));
	};
	LoadActor("graph/BGNORMAL.png")..{
	InitCommand=cmd(zoomtowidth,1;zoomtoheight,1;visible,(GAMESTATE:GetCurrentSteps(PLAYER_1):GetDifficulty() == 'Difficulty_Medium'));
	};
	LoadActor("graph/BGHARD.png")..{
	InitCommand=cmd(zoomtowidth,1;zoomtoheight,1;visible,(GAMESTATE:GetCurrentSteps(PLAYER_1):GetDifficulty() == 'Difficulty_Hard'));
	};
	LoadActor("graph/BGHARD.png")..{
	InitCommand=cmd(zoomtowidth,1;zoomtoheight,1;visible,(GAMESTATE:GetCurrentSteps(PLAYER_1):GetDifficulty() == 'Difficulty_Challenge'));
	};
	LoadActor("graph/BGHARD.png")..{
	InitCommand=cmd(zoomtowidth,1;zoomtoheight,1;visible,(GAMESTATE:GetCurrentSteps(PLAYER_1):GetDifficulty() == 'Difficulty_Edit'));
	};
}