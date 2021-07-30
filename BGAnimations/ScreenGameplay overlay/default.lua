return Def.ActorFrame{
	LoadActor("troopers_dance")..{
	InitCommand=cmd(zoomx,SCREEN_WIDTH/640);
	Condition=GAMESTATE:GetCurrentGame():GetName() ~= "beat";
	};
}