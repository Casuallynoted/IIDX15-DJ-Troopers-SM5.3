local t = Def.ActorFrame{
	LoadActor(THEME:GetPathS("","LOSE"))..{
		OnCommand=cmd(play);
		OffCommand=cmd(stop);
		Condition=STATSMAN:GetBestGrade() >= 6;
	};
	LoadActor(THEME:GetPathS("","WIN"))..{
		OnCommand=cmd(play);
		OffCommand=cmd(stop);
		Condition=STATSMAN:GetBestGrade() < 6;
	};
	-- A --
	LoadActor("A")..{
	InitCommand=cmd(zoomx,SCREEN_WIDTH/640);
	Condition=STATSMAN:GetBestGrade() == 3;
	};
	-- AA --
	LoadActor("AA")..{
	InitCommand=cmd(zoomx,SCREEN_WIDTH/640);
	Condition=STATSMAN:GetBestGrade() == 2;
	};
	-- AAA --
	LoadActor("AAA")..{
	InitCommand=cmd(zoomx,SCREEN_WIDTH/640);
	Condition=STATSMAN:GetBestGrade() == 1 or STATSMAN:GetBestGrade() == 0;
	};
	-- _CLEAR -- (B and C)
	LoadActor("_CLEAR")..{
	InitCommand=cmd(zoomx,SCREEN_WIDTH/640);
	Condition=STATSMAN:GetBestGrade() == 4 or STATSMAN:GetBestGrade() == 5;
	};
	-- _FAILED -- (D and E)
	LoadActor("_FAILED")..{
	InitCommand=cmd(zoomx,SCREEN_WIDTH/640);
	Condition=STATSMAN:GetBestGrade() >= 6;
	};
	-- HEADER --
	LoadActor("HEADER")..{
	InitCommand=cmd(zoomx,SCREEN_WIDTH/640);
	};
	-- CLEAR_FRAME --
	LoadActor("IIDX_CLEAR_FRAME")..{
	InitCommand=cmd(visible,GAMESTATE:GetCurrentGame():GetName() == "beat" or GAMESTATE:GetCurrentGame():GetName() == "pump";zoomx,SCREEN_WIDTH/640);
	};
	LoadActor("DDR_CLEAR_FRAME")..{
	InitCommand=cmd(visible,GAMESTATE:GetCurrentGame():GetName() == "dance" or GAMESTATE:GetCurrentGame():GetName() == "kb7";zoomx,SCREEN_WIDTH/640);
	};
 	LoadFont("TextBanner text") .. {
		Text="song";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-65;maxwidth,256;diffusealpha,0;sleep,.2;linear,.2;diffusealpha,1);
		OnCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:visible(true)
			self:settext(song:GetDisplayMainTitle())
		end
	};
};

return t;