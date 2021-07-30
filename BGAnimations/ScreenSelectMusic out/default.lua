local bgmPref = GetUserPref("IIDX15BGM");
local t = Def.ActorFrame {
	LoadActor(THEME:GetPathB("","STAGE"))..{
		InitCommand=cmd(zoomx,SCREEN_WIDTH/640);
	};
	LoadActor(bgmPref ..".ogg")..{
		OnCommand=cmd(stop);
		OffCommand=cmd(play);
	};
};
return t;