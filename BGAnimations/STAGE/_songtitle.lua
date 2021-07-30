return Def.ActorFrame {
	-- Layer5
	LoadFont("songtitle")..{
		Text="title1",
		InitCommand=cmd(blend,'BlendMode_Add';x,320;y,SCREEN_CENTER_Y-54;playcommand,"Set";shadowlength,0;maxwidth,290),
		OnCommand=cmd(finishtweening;playcommand,"Set"),
		OffCommand=cmd(finishtweening;playcommand,"Set"),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:settext(song:GetDisplayMainTitle())
			self:visible(true)
			self:diffusealpha(1)
			self:zoom(1)
			self:linear(.25)
			self:zoom(2)
			self:diffusealpha(0)
		end
	},
	-- Layer6
	LoadFont("songtitle")..{
		Text="title2",
		InitCommand=cmd(blend,'BlendMode_Add';x,320;y,SCREEN_CENTER_Y-54;playcommand,"Set";shadowlength,0;maxwidth,290),
		OnCommand=cmd(finishtweening;playcommand,"Set"),
		OffCommand=cmd(finishtweening;playcommand,"Set"),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:settext(song:GetDisplayMainTitle())
			self:visible(true)
			self:diffusealpha(.5)
			self:zoom(1.8)
			self:linear(.15)
			self:zoom(1.4)
			self:linear(.2)
			self:zoom(1)
			self:linear(.05)
			self:diffusealpha(0)
			self:linear(.05)
			self:diffusealpha(1)
			self:linear(.05)
			self:diffusealpha(0)
		end
	},
	-- Layer7
	LoadFont("songtitle")..{
		Text="title3",
		InitCommand=cmd(blend,'BlendMode_Add';x,320;y,SCREEN_CENTER_Y-54;playcommand,"Set";shadowlength,0;maxwidth,290),
		OnCommand=cmd(finishtweening;playcommand,"Set"),
		OffCommand=cmd(finishtweening;playcommand,"Set"),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:settext(song:GetDisplayMainTitle())
			self:visible(true)
			self:diffusealpha(.2)
			self:zoom(3)
			self:linear(.2)
			self:zoom(1.8)
			self:linear(1)
			self:diffusealpha(0)
		end
	},
	-- Layer8
	LoadFont("songtitle")..{
		Text="title4",
		InitCommand=cmd(x,320;y,SCREEN_CENTER_Y-54;playcommand,"Set";shadowlength,0;maxwidth,290),
		OnCommand=cmd(finishtweening;playcommand,"Set"),
		OffCommand=cmd(finishtweening;playcommand,"Set"),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:settext(song:GetDisplayMainTitle())
			self:visible(true)
			self:diffusealpha(0)
			self:zoom(1.6)
			self:linear(.25)
			self:zoom(1)
			self:diffusealpha(1)
			self:sleep(.15)
			self:diffusealpha(0)
		end
	},
	-- Layer10
	LoadFont("songtitle")..{
		Text="title5",
		InitCommand=cmd(blend,'BlendMode_Add';x,320;y,SCREEN_CENTER_Y-54;playcommand,"Set";shadowlength,0;maxwidth,290),
		OnCommand=cmd(finishtweening;playcommand,"Set"),
		OffCommand=cmd(finishtweening;playcommand,"Set"),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:settext(song:GetDisplayMainTitle())
			self:visible(true)
			self:diffusealpha(1)
			self:zoom(2.4)
			self:linear(.2)
			self:zoom(1)
			self:linear(.05)
			self:diffusealpha(0)
			self:linear(.05)
			self:diffusealpha(1)
			self:linear(.05)
			self:diffusealpha(0)
		end
	},
	-- Layer12/1
	LoadFont("songtitle")..{
		Text="title6",
		InitCommand=cmd(x,320;y,SCREEN_CENTER_Y-54;playcommand,"Set";shadowlength,0;maxwidth,290),
		OnCommand=cmd(finishtweening;playcommand,"Set"),
		OffCommand=cmd(finishtweening;playcommand,"Set"),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:settext(song:GetDisplayMainTitle())
			self:visible(true)
			self:y(SCREEN_CENTER_Y-54)
			self:diffusealpha(0)
			self:sleep(.3)
			self:zoom(1)
			self:diffusealpha(1)
			self:sleep(2.1)
			self:decelerate(.7)
			self:zoom(.8)
			self:y(SCREEN_CENTER_Y-42)
		end
	},
	-- Layer12/2
	LoadFont("songtitle")..{
		Text="title6",
		InitCommand=cmd(x,320;y,SCREEN_CENTER_Y-54;playcommand,"Set";shadowlength,0;maxwidth,290),
		OnCommand=cmd(finishtweening;playcommand,"Set"),
		OffCommand=cmd(finishtweening;playcommand,"Set"),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:settext(song:GetDisplayMainTitle())
			self:visible(true)
			self:y(SCREEN_CENTER_Y-54)
			self:diffusealpha(0)
			self:zoom(1)
			self:sleep(2.4)
			self:diffusealpha(1)
			self:decelerate(.7)
			self:blend('BlendMode_Add')
			self:zoom(1.3)
			self:y(SCREEN_CENTER_Y-68)
		end
	},
	-- Layer12/3
	LoadFont("songtitle")..{
		Text="title6",
		InitCommand=cmd(x,320;y,SCREEN_CENTER_Y-54;playcommand,"Set";shadowlength,0;maxwidth,290),
		OnCommand=cmd(finishtweening;playcommand,"Set"),
		OffCommand=cmd(finishtweening;playcommand,"Set"),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:settext(song:GetDisplayMainTitle())
			self:visible(true)
			self:y(SCREEN_CENTER_Y-54)
			self:diffusealpha(0)
			self:zoom(1)
			self:sleep(2.4)
			self:diffusealpha(1)
			self:decelerate(.7)
			self:blend('BlendMode_Add')
			self:zoom(1.8)
			self:y(SCREEN_CENTER_Y-94)
		end
	},
	-- Genre/1
	LoadFont("hv")..{
		Text="genre",
		InitCommand=cmd(x,320;y,SCREEN_CENTER_Y-82;playcommand,"Set";shadowlength,0;maxwidth,290),
		OnCommand=cmd(finishtweening;playcommand,"Set"),
		OffCommand=cmd(finishtweening;playcommand,"Set"),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:visible(true)
			self:y(SCREEN_CENTER_Y-82)
			self:zoom(.9)
			self:zoomx(.7)
			self:zoomy(.9)
			self:addy(-10)
			self:diffusealpha(0)
			self:sleep(.2)
			self:linear(0.15)
			self:addy(10)
			self:diffusealpha(1)
			self:sleep(2.05)
			self:decelerate(.7)
			self:zoom(.7)
			self:zoomx(.5)
			self:zoomy(.7)
			self:y(SCREEN_CENTER_Y-66)
			if song:GetGenre() ~= "" then
				self:settext(song:GetGenre())
			else
				self:settext(GenreGen.Generate())
			end
		end
	},
	-- Genre/2
	LoadFont("hv")..{
		Text="genre",
		InitCommand=cmd(x,320;y,SCREEN_CENTER_Y-82;playcommand,"Set";shadowlength,0;maxwidth,290),
		OnCommand=cmd(finishtweening;playcommand,"Set"),
		OffCommand=cmd(finishtweening;playcommand,"Set"),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:visible(true)
			self:blend('BlendMode_Add')
			self:y(SCREEN_CENTER_Y-82)
			self:zoom(.9)
			self:zoomx(.7)
			self:zoomy(.9)
			self:diffusealpha(0)
			self:sleep(2.4)
			self:diffusealpha(.4)
			self:decelerate(.7)
			self:zoom(1.2)
			self:zoomx(1)
			self:zoomy(1.2)
			self:y(SCREEN_CENTER_Y-107)
			if song:GetGenre() ~= "" then
				self:settext(song:GetGenre())
			else
				self:settext(GenreGen.Generate())
			end
		end
	},
	-- Genre/3
	LoadFont("hv")..{
		Text="genre",
		InitCommand=cmd(x,320;y,SCREEN_CENTER_Y-82;playcommand,"Set";shadowlength,0;maxwidth,290),
		OnCommand=cmd(finishtweening;playcommand,"Set"),
		OffCommand=cmd(finishtweening;playcommand,"Set"),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:visible(true)
			self:blend('BlendMode_Add')
			self:y(SCREEN_CENTER_Y-82)
			self:zoom(.9)
			self:zoomx(.7)
			self:zoomy(.9)
			self:diffusealpha(0)
			self:sleep(2.4)
			self:diffusealpha(.4)
			self:decelerate(.7)
			self:zoom(1.7)
			self:zoomx(1.5)
			self:zoomy(1.7)
			self:y(SCREEN_CENTER_Y-149)
			if song:GetGenre() ~= "" then
				self:settext(song:GetGenre())
			else
				self:settext(GenreGen.Generate())
			end
		end
	},
	-- Artist/1
	LoadFont("artist 16px")..{
		Text="artist",
		InitCommand=cmd(x,320;y,SCREEN_CENTER_Y-10;playcommand,"Set";zoom,0.7;shadowlength,0;maxwidth,290),
		OnCommand=cmd(finishtweening;playcommand,"Set"),
		OffCommand=cmd(finishtweening;playcommand,"Set"),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:visible(true)
			self:y(SCREEN_CENTER_Y-10)
			self:zoom(.7)
			self:addy(10)
			self:diffusealpha(0)
			self:sleep(.2)
			self:linear(0.15)
			self:addy(-10)
			self:diffusealpha(1)
			self:sleep(2.05)
			self:decelerate(.7)
			self:zoom(.5)
			self:y(SCREEN_CENTER_Y-11)
			self:settext(song:GetDisplayArtist())
		end
	},
	-- Artist/2
	LoadFont("artist 16px")..{
		Text="artist",
		InitCommand=cmd(x,320;y,SCREEN_CENTER_Y-10;playcommand,"Set";zoom,0.7;shadowlength,0;maxwidth,290),
		OnCommand=cmd(finishtweening;playcommand,"Set"),
		OffCommand=cmd(finishtweening;playcommand,"Set"),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:visible(true)
			self:y(SCREEN_CENTER_Y-10)
			self:zoom(.7)
			self:diffusealpha(0)
			self:sleep(2.4)
			self:diffusealpha(.5)
			self:decelerate(.7)
			self:zoom(1)
			self:y(SCREEN_CENTER_Y-18)
			self:settext(song:GetDisplayArtist())
		end
	},
	-- Artist/3
	LoadFont("artist 16px")..{
		Text="artist",
		InitCommand=cmd(x,320;y,SCREEN_CENTER_Y-10;playcommand,"Set";zoom,0.7;shadowlength,0;maxwidth,290),
		OnCommand=cmd(finishtweening;playcommand,"Set"),
		OffCommand=cmd(finishtweening;playcommand,"Set"),
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:visible(true)
			self:y(SCREEN_CENTER_Y-10)
			self:zoom(.7)
			self:diffusealpha(0)
			self:sleep(2.4)
			self:diffusealpha(.5)
			self:decelerate(.7)
			self:zoom(1.5)
			self:y(SCREEN_CENTER_Y-25)
			self:settext(song:GetDisplayArtist())
		end
	},
}