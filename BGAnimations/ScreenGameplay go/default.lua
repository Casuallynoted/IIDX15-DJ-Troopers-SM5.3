return Def.ActorFrame{
	LoadActor("_ddr")..{
	InitCommand=cmd(visible,GAMESTATE:GetCurrentGame():GetName() ~= "beat");
	};
	LoadActor("_iidx")..{
	InitCommand=cmd(visible,GAMESTATE:GetCurrentGame():GetName() == "beat";zoomx,SCREEN_WIDTH/640);
	};
}