return Def.ActorFrame{
	LoadActor("SCORE_P1.png")..{
	InitCommand=cmd(horizalign,left;vertalign,bottom;x,SCREEN_LEFT;y,SCREEN_BOTTOM);
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
}