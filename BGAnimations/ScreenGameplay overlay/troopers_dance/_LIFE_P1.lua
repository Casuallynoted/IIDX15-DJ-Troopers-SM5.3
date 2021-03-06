local t = Def.ActorFrame{
	LoadActor("LIFE_P1")..{
		InitCommand=cmd(x,0;y,0);
	};
	LoadActor("2dx")..{
		InitCommand=cmd(diffuse,.3,.3,.3,1;x,-7;y,-1;visible,(GAMESTATE:IsPlayerEnabled(PLAYER_1)));
	};
	LoadActor("2dx")..{
		InitCommand=cmd(x,-7;y,-1;visible,(GAMESTATE:IsPlayerEnabled(PLAYER_1)));
		LifeChangedMessageCommand=function(self,param)
			if param.Player == PLAYER_1 then
				local life = param.LifeMeter:GetLife();
				self:cropright(1 - life);
			end;
		end;
	};
	-- tip
	LoadActor("tip")..{
		InitCommand=cmd(diffuseblink;effectperiod,0.16;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0");x,-11;y,-1;visible,(GAMESTATE:IsPlayerEnabled(PLAYER_1)));
		LifeChangedMessageCommand=function(self,param)
			if param.Player == PLAYER_1 then
				local life = param.LifeMeter:GetLife();
				self:cropright(1 - life);
				self:cropleft(life - 0.02);
			end;
		end;
	};
	LoadActor("tip")..{
		InitCommand=cmd(diffuseblink;effectperiod,0.1;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0");x,-15;y,-1;visible,(GAMESTATE:IsPlayerEnabled(PLAYER_1)));
		LifeChangedMessageCommand=function(self,param)
			if param.Player == PLAYER_1 then
				local life = param.LifeMeter:GetLife();
				self:cropright(1 - life);
				self:cropleft(life - 0.02);
			end;
		end;
	};
};

return t;