local t = Def.ActorFrame {
	LoadActor(THEME:GetPathS("","0Z.ogg"))..{
		OnCommand=cmd(play);
	};
};
return t