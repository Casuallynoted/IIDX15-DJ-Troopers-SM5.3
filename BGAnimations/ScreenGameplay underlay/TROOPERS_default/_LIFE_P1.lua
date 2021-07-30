local t = Def.ActorFrame{
	LoadActor("LIFE_P1")..{
		InitCommand=cmd(x,0;y,0);
	};
	LoadActor("2dx")..{
		InitCommand=cmd(diffuse,.3,.3,.3,1;x,3;y,15);
	};
	LoadActor("2dx")..{
		InitCommand=cmd(x,3;y,15);
		LifeChangedMessageCommand=function(self,param)
			if param.Player == PLAYER_1 then
				local life = param.LifeMeter:GetLife();
				self:cropright(1 - life);
			end;
		end;
	};
	-- tip
	LoadActor("tip")..{
		InitCommand=cmd(diffuseblink;effectperiod,0.16;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0");x,-1;y,15);
		LifeChangedMessageCommand=function(self,param)
			if param.Player == PLAYER_1 then
				local life = param.LifeMeter:GetLife();
				self:cropright(1 - life);
				self:cropleft(life - 0.02);
			end;
		end;
	};
	LoadActor("tip")..{
		InitCommand=cmd(diffuseblink;effectperiod,0.1;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0");x,-5;y,15);
		LifeChangedMessageCommand=function(self,param)
			if param.Player == PLAYER_1 then
				local life = param.LifeMeter:GetLife();
				self:cropright(1 - life);
				self:cropleft(life - 0.02);
			end;
		end;
	};
	Def.BitmapText { File = "Life Percent.ini" }..{
		InitCommand=cmd(x,92;y,42;horizalign,right);
		LifeChangedMessageCommand=function(self,param)
			if param.Player == PLAYER_1 then
				local life = param.LifeMeter:GetLife();
				self:settextf("%.0f%%", life*100);
			end;
		end;
	};
	LoadActor("SP_BLINE")..{
		InitCommand=cmd(x,78;y,-37;blend,'BlendMode_Add');
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
};

return t;