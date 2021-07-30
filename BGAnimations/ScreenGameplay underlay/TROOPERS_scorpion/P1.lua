local t = Def.ActorFrame{
	LoadActor("2dx")..{
		InitCommand=cmd(diffuse,.3,.3,.3,1;x,123;y,389);
	};
	LoadActor("2dx")..{
		InitCommand=cmd(x,123;y,389);
		LifeChangedMessageCommand=function(self,param)
			if param.Player == PLAYER_1 then
				local life = param.LifeMeter:GetLife();
				self:cropright(1 - life);
			end;
		end;
	};
	-- tip
	LoadActor("tip")..{
		InitCommand=cmd(diffuseblink;effectperiod,0.16;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0");x,119;y,389);
		LifeChangedMessageCommand=function(self,param)
			if param.Player == PLAYER_1 then
				local life = param.LifeMeter:GetLife();
				self:cropright(1 - life);
				self:cropleft(life - 0.02);
			end;
		end;
	};
	LoadActor("tip")..{
		InitCommand=cmd(diffuseblink;effectperiod,0.1;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0");x,115;y,389);
		LifeChangedMessageCommand=function(self,param)
			if param.Player == PLAYER_1 then
				local life = param.LifeMeter:GetLife();
				self:cropright(1 - life);
				self:cropleft(life - 0.02);
			end;
		end;
	};
	Def.BitmapText { File = "Life Percent.ini" }..{
		InitCommand=cmd(x,212;y,416;horizalign,right);
		LifeChangedMessageCommand=function(self,param)
			if param.Player == PLAYER_1 then
				local life = param.LifeMeter:GetLife();
				self:settextf("%.0f%%", life*100);
			end;
		end;
	};
	LoadActor("SP_BLINE")..{
		InitCommand=cmd(x,198;y,337;blend,'BlendMode_Add');
		OnCommand=cmd(diffusealpha,0);
		FlashMessageCommand=cmd(stoptweening;diffusealpha,1;diffuseblink;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0");effectperiod,0.06;sleep,.3;diffusealpha,0);
		JudgmentMessageCommand=function(self,params)
			if params.TapNoteScore == 'TapNoteScore_Miss'
			then
				MESSAGEMAN:Broadcast("Miss");
				self:visible(false)
			else
				MESSAGEMAN:Broadcast("Flash");
				self:visible(true)
			end
		end
	};
	Def.BitmapText { File = "NUMBERS.ini" }..{
	InitCommand=cmd(horizalign,right;vertalign,bottom;x,SCREEN_LEFT+142;y,SCREEN_BOTTOM+50);
	Text="     0";
		JudgmentMessageCommand=function(self,params)
			local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1)
			local score = stats:GetScore();
			self:settext(string.format("%6d",score))
	end;
	};
	Def.BitmapText { File = "NUMBERS.ini" }..{
	InitCommand=cmd(horizalign,right;vertalign,bottom;x,SCREEN_LEFT+142;y,SCREEN_BOTTOM+66);
	Text="   0";
		JudgmentMessageCommand=function(self,params)
			local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1)
			local maxCombo = stats:MaxCombo();
			self:settext(string.format("%4d",maxCombo + 1))
	end;
	};
	Def.SongBPMDisplay{
	File=THEME:GetPathF("", "Gameplay BPM");
	Name="BPMDisplay";
	InitCommand=cmd(x,320;y,511;diffusealpha,1);
	OnCommand=function(self) self:SetFromGameState() end;
	};
};

return t;