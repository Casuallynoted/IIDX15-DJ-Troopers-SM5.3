local t = Def.ActorFrame{
	-- CLEAR --
	LoadActor("_CLEAR")..{
	InitCommand=cmd(zoomx,SCREEN_WIDTH/640);
	Condition=STATSMAN:GetBestGrade() < 6;
	};
	-- FAILED --
	LoadActor("_FAILED")..{
	InitCommand=cmd(zoomx,SCREEN_WIDTH/640);
	Condition=STATSMAN:GetBestGrade() >= 6;
	};
};

return t;