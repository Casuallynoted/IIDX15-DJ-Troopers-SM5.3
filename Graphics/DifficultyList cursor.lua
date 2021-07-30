local DifficultyToFrame = {
	Difficulty_Beginner	 = 0,
	Difficulty_Easy		 = 1,
	Difficulty_Medium	 = 2,
	Difficulty_Hard		 = 3,
	Difficulty_Challenge = 4,
	Difficulty_Edit		 = 5,
};
return Def.ActorFrame{
	--OnlyP1--
	LoadActor("_cursor 1x6.png")..{
	InitCommand=cmd(x,-65;y,-9;rotationz,90;animate,false;setstate,0);
	BeginCommand=cmd(player,PLAYER_1);
	SetCommand=function(self)
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
	CurrentStepsP1ChangedMessageCommand=cmd(stoptweening;playcommand,"Set");
	CurrentTrailP1ChangedMessageCommand=cmd(stoptweening;playcommand,"Set");
	CurrentSongChangedChangedMessageCommand=cmd(stoptweening;playcommand,"Set");
	CurrentCourseChangedChangedMessageCommand=cmd(stoptweening;playcommand,"Set");
	};
	--OnlyP2--
	LoadActor("_cursor 1x6.png")..{
	InitCommand=cmd(x,-65;y,-9;rotationz,90;animate,false;setstate,0);
	BeginCommand=cmd(player,PLAYER_2);
	SetCommand=function(self)
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
	CurrentStepsP2ChangedMessageCommand=cmd(stoptweening;playcommand,"Set");
	CurrentTrailP2ChangedMessageCommand=cmd(stoptweening;playcommand,"Set");
	CurrentSongChangedChangedMessageCommand=cmd(stoptweening;playcommand,"Set");
	CurrentCourseChangedChangedMessageCommand=cmd(stoptweening;playcommand,"Set");
	};
};