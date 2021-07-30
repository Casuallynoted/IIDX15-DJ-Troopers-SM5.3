local t = LoadFallbackB();

t[#t+1] = Def.ActorFrame{
	Def.Quad{
		InitCommand=cmd(x,320;y,240);
		OnCommand=function(self,param)
			SCREENMAN:GetTopScreen():GetChild("SongBackground"):zoomto(.7,1)
		end;
	};
};

return t;