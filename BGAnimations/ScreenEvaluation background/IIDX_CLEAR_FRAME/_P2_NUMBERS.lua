local t = Def.ActorFrame{
	--P2 NUMBERS
	LoadFont("Evaluation Numbers")..{
	InitCommand=cmd(horizalign,left;vertalign,top;x,467;y,SCREEN_CENTER_Y+59);
	OnCommand=function(self,params)
		local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2)
		local w2 = stats:GetTapNoteScores('TapNoteScore_W2');
			str = string.format("%4d\n%4d\n%4d\n%4d\n%4d",
			stats:GetTapNoteScores('TapNoteScore_W2'),
			stats:GetTapNoteScores('TapNoteScore_W3'),
			stats:GetTapNoteScores('TapNoteScore_W4'),
			stats:GetTapNoteScores('TapNoteScore_W5'),
			stats:GetTapNoteScores('TapNoteScore_Miss')
			)
		self:settext(str)
	end;
	};
	LoadFont("Evaluation Numbers")..{
	InitCommand=cmd(horizalign,right;vertalign,top;x,518;y,SCREEN_CENTER_Y-16);
	OnCommand=function(self,params)
		local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2)
		local radar = GAMESTATE:GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_2)
			str = string.format("%6d\n%4d\n%4d",
			stats:GetCurrentPossibleDancePoints(),
			radar:GetValue('RadarCategory_TapsAndHolds'),
			stats:MaxCombo()
			)
		self:settext(str)
	end;
	};
	LoadFont("Evaluation Numbers")..{
	InitCommand=cmd(horizalign,right;vertalign,top;x,518;y,SCREEN_CENTER_Y+182);
	OnCommand=function(self,params)
		local score = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetScore()
		self:settext(string.format("%6d",score))
	end;
	};
};

return t;