return Def.ActorFrame{
	LoadActor("iidx")..{
	InitCommand=cmd(zoom,2.1;visible,GAMESTATE:GetCurrentGame():GetName() == "beat");
	};
	LoadActor("pump")..{
	InitCommand=cmd(visible,GAMESTATE:GetCurrentGame():GetName() == "pump");
	};
	LoadActor("dance")..{
	InitCommand=cmd(visible,GAMESTATE:GetCurrentGame():GetName() ~= "pump" and GAMESTATE:GetCurrentGame():GetName() ~= "beat");
	};
}