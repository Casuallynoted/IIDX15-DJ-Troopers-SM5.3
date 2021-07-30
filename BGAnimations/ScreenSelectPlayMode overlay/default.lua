local t = Def.ActorFrame {
	LoadActor("overlay")..{
	OnCommand=cmd(visible,true);
	OffCommand=cmd(visible,false);
	};
};
return t;