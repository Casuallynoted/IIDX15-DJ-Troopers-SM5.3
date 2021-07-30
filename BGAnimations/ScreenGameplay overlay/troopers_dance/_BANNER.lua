return Def.ActorFrame{
	LoadActor("BANNER.png")..{
	InitCommand=cmd(x,0;y,0);
	};
	Def.Banner{
	InitCommand=cmd(x,0;y,0);
	BeginCommand=function(self)
		self:LoadFromSong( GAMESTATE:GetCurrentSong() )
		self:zoomtowidth(128)
		self:zoomtoheight(40)
		end;
	};
}