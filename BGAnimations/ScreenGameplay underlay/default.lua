local framePref = GetUserPref("IIDX15Frame");
local t = Def.ActorFrame{
	LoadActor(framePref)..{
		InitCommand=cmd(zoomx,SCREEN_WIDTH/640);
		Condition=GAMESTATE:GetCurrentGame():GetName() == "beat";
	};
	LoadActor("_ddr") .. {
		InitCommand=cmd(zoomx,SCREEN_WIDTH/640);
		Condition=GAMESTATE:GetCurrentGame():GetName() ~= "beat";
	};
};

return t;