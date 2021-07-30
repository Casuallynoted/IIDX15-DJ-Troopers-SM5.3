local bgmPref = GetUserPref("IIDX15BGM");
local t = Def.ActorFrame {
	LoadActor("mm/" ..bgmPref)..{
		OnCommand=cmd(play);
		OffCommand=cmd(stop);
	};
	LoadActor("_mselect")..{
		InitCommand=cmd(visible,GAMESTATE:GetPlayMode() == 'PlayMode_Regular');
	};
	LoadActor("_expert")..{
		InitCommand=cmd(visible,GAMESTATE:GetPlayMode() == 'PlayMode_Nonstop');
	};
	LoadActor("_oni")..{
		InitCommand=cmd(visible,GAMESTATE:GetPlayMode() == 'PlayMode_Oni');
	};
	LoadActor("bg.lua")..{
		InitCommand=cmd(zoomx,SCREEN_WIDTH/640);
	};
};
return t;