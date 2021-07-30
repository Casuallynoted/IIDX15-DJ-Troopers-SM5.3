-- player 2
local DifficultyToFrame = {
	Difficulty_Beginner	 = 0,
	Difficulty_Easy		 = 1,
	Difficulty_Medium	 = 2,
	Difficulty_Hard		 = 3,
	Difficulty_Challenge = 4,
	Difficulty_Edit		 = 5,
};
return LoadActor("_difficulty")..{
	InitCommand=cmd(animate,false;setstate,0);
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
	CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
	CurrentTrailP2ChangedMessageCommand=cmd(playcommand,"Set");
	CurrentSongChangedChangedMessageCommand=cmd(playcommand,"Set");
	CurrentCourseChangedChangedMessageCommand=cmd(playcommand,"Set");
};