local DifficultyToFrame = {
	Difficulty_Beginner	 = 0,
	Difficulty_Easy		 = 1,
	Difficulty_Medium	 = 2,
	Difficulty_Hard		 = 3,
	Difficulty_Challenge = 4,
	Difficulty_Edit		 = 5,
};
return Def.ActorFrame{
	LoadActor("Difficulty icons 1x6.png")..{
	InitCommand=cmd(x,154;y,207;animate,false;setstate,0;diffusealpha,0;cropbottom,1;sleep,0.2;linear,0.2;diffusealpha,1;cropbottom,0);
	Condition=GAMESTATE:IsPlayerEnabled(PLAYER_1);
	BeginCommand=cmd(player,PLAYER_1);
	OnCommand=function(self)
		if GAMESTATE:GetCurrentSong() or GAMESTATE:GetCurrentCourse() then
			local StepsOrTrail;
			if GAMESTATE:IsCourseMode() then
				StepsOrTrail = GAMESTATE:GetCurrentTrail(PLAYER_1);
			else
				StepsOrTrail = GAMESTATE:GetCurrentSteps(PLAYER_1);
			end;
			if StepsOrTrail then
				self:setstate(DifficultyToFrame[StepsOrTrail:GetDifficulty()]);
				self:visible(true)
			else
				self:visible(false)
			end;
		else
			self:visible(false)
		end;
	end;
	};
	LoadActor("Difficulty icons 1x6.png")..{
	InitCommand=cmd(x,486;y,207;animate,false;setstate,0;diffusealpha,0;cropbottom,1;sleep,0.2;linear,0.2;diffusealpha,1;cropbottom,0);
	Condition=GAMESTATE:IsPlayerEnabled(PLAYER_2);
	BeginCommand=cmd(player,PLAYER_2);
	OnCommand=function(self)
		if GAMESTATE:GetCurrentSong() or GAMESTATE:GetCurrentCourse() then
			local StepsOrTrail;
			if GAMESTATE:IsCourseMode() then
				StepsOrTrail = GAMESTATE:GetCurrentTrail(PLAYER_2);
			else
				StepsOrTrail = GAMESTATE:GetCurrentSteps(PLAYER_2);
			end;
			if StepsOrTrail then
				self:setstate(DifficultyToFrame[StepsOrTrail:GetDifficulty()]);
				self:visible(true)
			else
				self:visible(false)
			end;
		else
			self:visible(false)
		end;
	end;
	};
};