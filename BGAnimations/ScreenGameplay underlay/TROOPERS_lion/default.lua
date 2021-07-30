local t = Def.ActorFrame{
	Def.Quad{
		InitCommand=cmd();
		OnCommand=function(self,param)
			SCREENMAN:GetTopScreen():GetChild("SongBackground"):zoomto(.5,.88)
			SCREENMAN:GetTopScreen():GetChild("SongBackground"):x(SCREEN_WIDTH/4)
		end;
	};
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
		OnCommand=cmd(diffuse,color("#FFFFFF");sleep,.9;sleep,2.2;linear,.3;diffusealpha,0);
	};
	LoadFont("title")..{
		InitCommand=cmd(diffuse,color("#000000");x,320;y,SCREEN_CENTER_Y-60;horizalign,center;zoomy,1.6;shadowlength,0;maxwidth,290;sleep,.9;sleep,2.2;linear,.3;diffusealpha,0);
		OnCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end;
			self:visible(true)
			self:settext(song:GetDisplayMainTitle())
		end;
	};
	LoadFont("Gameplay Genre")..{
		InitCommand=cmd(diffuse,color("#000000");x,320;y,SCREEN_CENTER_Y-120;horizalign,center;shadowlength,0;maxwidth,290;diffusealpha,1;sleep,.9;sleep,2.2;linear,.3;diffusealpha,0);
		OnCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:visible(true)
			if song:GetGenre() ~= "" then
				self:settext(song:GetGenre())
			else
				self:settext(GenreGen.Generate())
			end
		end
	};
	LoadFont("artist 16px")..{
		InitCommand=cmd(x,320;y,SCREEN_CENTER_Y+50;horizalign,center;zoom,0.7;shadowlength,0;maxwidth,310;diffusealpha,1;sleep,.9;sleep,2.2;linear,.3;diffusealpha,0),
		OnCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:visible(true)
			self:settext(song:GetDisplayArtist())
		end
	},
	LoadActor("BG")..{
	InitCommand=cmd(x,320;y,240);
	};
	LoadActor(THEME:GetPathB("", "SONG_INFO/DIFFICULTY"))..{
	};
	LoadActor(THEME:GetPathB("", "SONG_INFO/STAGE"))..{
	};
	LoadActor(THEME:GetPathB("", "SONG_INFO/MODE"))..{
	InitCommand=cmd(y,-200);
	};
	LoadActor("TIME_DISPLAY")..{
	InitCommand=cmd(x,20;y,162;rotationz,90;draworder,1;halign,0.5);
	};
	LoadActor("P1")..{
	};
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
		OnCommand=cmd(diffuse,color("#000000");diffusealpha,1;linear,.4;diffusealpha,0);
	};
	LoadActor("../_troopers_fullcombo")..{
	};
};

return t;