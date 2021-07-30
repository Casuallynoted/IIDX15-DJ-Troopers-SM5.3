local DifficultyToFrame = {
	Difficulty_Beginner	 = 0,
	Difficulty_Easy		 = 1,
	Difficulty_Medium	 = 2,
	Difficulty_Hard		 = 3,
	Difficulty_Challenge = 4,
	Difficulty_Edit		 = 5,
};
return Def.ActorFrame{
	LoadActor("_diff 1x6.png")..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;animate,false;setstate,0;addy,14;cropbottom,1;diffusealpha,0;sleep,0;diffusealpha,1;croptop,1;cropbottom,0;);
	Condition=GAMESTATE:IsPlayerEnabled(PLAYER_1);
	AnimateMessageCommand=cmd(x,448;y,449;sleep,2;linear,.35;addy,14;cropbottom,1;diffusealpha,0;sleep,0;diffusealpha,1;croptop,1;cropbottom,0;sleep,.1;addy,-28;linear,.35;addy,14;croptop,0;queuecommand,"Animate");
	OnCommand=function(self)
		MESSAGEMAN:Broadcast("Animate")
		self:setstate(DifficultyToFrame[GAMESTATE:GetHardestStepsDifficulty()]);
	end;
	};
};