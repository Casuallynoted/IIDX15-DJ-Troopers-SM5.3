return Def.ActorFrame {
	Name="Arrows";
	LoadActor("ACTIVE_LINE1")..{
		InitCommand=cmd(playcommand,"Set";blend,'BlendMode_Add';diffusealpha,0;;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-67;zoomtowidth,SCREEN_WIDTH);
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			self:diffusealpha(1)
			self:sleep(0.08)
			self:decelerate(0.05)
			self:addy(-8)
			self:diffusealpha(0.5)
			self:decelerate(0.05)
			self:addy(-8)
			self:diffusealpha(0)
			self:linear(0)
			self:addy(16)
		end;
	},
	LoadActor("ACTIVE_LINE2")..{
		InitCommand=cmd(playcommand,"Set";blend,'BlendMode_Add';diffusealpha,0;;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-3;zoomtowidth,SCREEN_WIDTH);
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			self:diffusealpha(1)
			self:sleep(0.08)
			self:decelerate(0.05)
			self:addy(8)
			self:diffusealpha(0.5)
			self:decelerate(0.05)
			self:addy(8)
			self:diffusealpha(0)
			self:linear(0)
			self:addy(-16)
		end;
	},
	LoadActor("ACTIVE_LINE3")..{
		InitCommand=cmd(playcommand,"Set";blend,'BlendMode_Add';diffusealpha,0;;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-50;zoomtowidth,SCREEN_WIDTH);
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set"),
		SetCommand=function(self)
			self:diffusealpha(1)
			self:sleep(0.08)
			self:diffusealpha(0)
		end;
	},
	LoadActor("flash")..{
		InitCommand=cmd(blend,'BlendMode_Add';diffusealpha,0;x,WideScale(SCREEN_CENTER_X+309,SCREEN_CENTER_X+412);y,SCREEN_CENTER_Y-67);
		PreviousSongMessageCommand=function(self)
			self:stoptweening()
			self:diffusealpha(1)
			self:decelerate(0.4)
			self:diffusealpha(0)
		end;
	};
	LoadActor("flash")..{
		InitCommand=cmd(blend,'BlendMode_Add';diffusealpha,0;x,WideScale(SCREEN_CENTER_X+309,SCREEN_CENTER_X+412);y,SCREEN_CENTER_Y+189);
		NextSongMessageCommand=function(self)
			self:stoptweening()
			self:diffusealpha(1)
			self:decelerate(0.4)
			self:diffusealpha(0)
		end;
	};
}