local t = Def.ActorFrame{
	LoadActor("DIFF_WAKU")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-120;y,SCREEN_CENTER_Y+46;visible,GAMESTATE:GetPlayMode() == 'PlayMode_Regular');
		OnCommand=cmd(zoomy,0;sleep,0.2;linear,0.2;zoomy,1);
	};
	LoadFont("hv")..{
		Text="genre",
		InitCommand=cmd(x,SCREEN_CENTER_X+30;y,SCREEN_CENTER_Y-88;playcommand,"Set";horizalign,right;zoom,0.9;zoomx,0.7;zoomy,0.9;shadowlength,0;maxwidth,290),
		OnCommand=cmd(diffusealpha,0;linear,0.5;diffusealpha,1),
		OffCommand=cmd(linear,0.5;diffusealpha,0),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:visible(true)
			self:addx(5)
			self:addy(-5)
			self:diffusealpha(0)
			self:linear(0.1)
			self:addx(-5)
			self:addy(5)
			self:diffusealpha(1)
			if song:GetGenre() ~= "" then
				self:settext(song:GetGenre())
			else
				self:settext(GenreGen.Generate())
			end
		end
	},
	LoadFont("artist 16px")..{
		Text="artist",
		InitCommand=cmd(x,SCREEN_CENTER_X+30;y,SCREEN_CENTER_Y-22;playcommand,"Set";horizalign,right;zoom,0.7;shadowlength,0;maxwidth,290),
		OnCommand=cmd(diffusealpha,0;linear,0.5;diffusealpha,1),
		OffCommand=cmd(linear,0.5;diffusealpha,0),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:visible(true)
			self:addx(-5)
			self:addy(-5)
			self:diffusealpha(0)
			self:sleep(0.1)
			self:linear(0.1)
			self:addx(5)
			self:addy(5)
			self:diffusealpha(1)
			self:settext(song:GetDisplayArtist())
		end
	},
	LoadFont("songtitle")..{
		Text="title",
		InitCommand=cmd(x,SCREEN_CENTER_X+30;y,SCREEN_CENTER_Y-60;playcommand,"Set";horizalign,right;zoom,.9;zoomy,1;shadowlength,0;maxwidth,290),
		OnCommand=cmd(diffusealpha,0;linear,0.5;diffusealpha,1),
		OffCommand=cmd(linear,0.5;diffusealpha,0),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:visible(true)
			self:addx(-5)
			self:addy(5)
			self:diffusealpha(0)
			self:linear(0.1)
			self:addx(5)
			self:addy(-5)
			self:diffusealpha(1)
			self:settext(song:GetDisplayMainTitle())
		end
	},
	LoadFont("songtitle")..{
		Text="title",
		InitCommand=cmd(x,SCREEN_CENTER_X+30;y,SCREEN_CENTER_Y-60;playcommand,"Set";horizalign,right;zoom,.9;zoomy,1;shadowlength,0;maxwidth,290),
		OnCommand=cmd(diffusealpha,0),
		OffCommand=cmd(linear,0.5;diffusealpha,0),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:visible(true)
			self:blend('BlendMode_Add')
			self:diffusealpha(0)
			self:sleep(0.2)
			self:linear(0.05)
			self:diffusealpha(0.8)
			self:linear(0.05)
			self:diffusealpha(0)
			self:linear(0.05)
			self:diffusealpha(0.8)
			self:linear(0.05)
			self:diffusealpha(0)
			self:settext(song:GetDisplayMainTitle())
		end
	},
	--Course title--
	LoadFont("songtitle")..{
		Text="course_title",
		InitCommand=cmd(x,SCREEN_CENTER_X-240;y,SCREEN_CENTER_Y-60;playcommand,"Set";horizalign,left;zoom,.9;zoomy,1;shadowlength,0;maxwidth,290),
		OnCommand=cmd(diffusealpha,0;linear,0.5;diffusealpha,1),
		OffCommand=cmd(linear,0.5;diffusealpha,0),
		CurrentCourseChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local course = GAMESTATE:GetCurrentCourse()
			if not course
				then self:visible(false)
				return
			end
			self:visible(true)
			self:addx(-5)
			self:addy(5)
			self:diffusealpha(0)
			self:linear(0.1)
			self:addx(5)
			self:addy(-5)
			self:diffusealpha(1)
			self:settext(course:GetDisplayFullTitle())
		end
	},
};

return t;