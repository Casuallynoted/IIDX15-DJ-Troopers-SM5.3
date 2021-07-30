local t = Def.ActorFrame {
	LoadActor(THEME:GetPathS("","default (loop).ogg"))..{
		OnCommand=cmd(play);
		OffCommand=cmd(stop);
	};
	LoadActor("model")..{
	};
	LoadActor("bg.lua")..{
		InitCommand=cmd(zoomx,SCREEN_WIDTH/640);
	};
};
return t;