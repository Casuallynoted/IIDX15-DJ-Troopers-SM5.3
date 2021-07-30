return Def.ActorFrame {
		LoadFont("system") .. {
		InitCommand=cmd(zoom,1;horizalign,left);
		OnCommand=cmd(settext,"VERSION: " ..ProductID().." "..ProductVersion());
	};
		LoadFont("system") .. {
		InitCommand=cmd(zoom,1;horizalign,left;addy,12);
		OnCommand=cmd(settext,"THEME by DJ.TONY BETA V1.0");
	};
};