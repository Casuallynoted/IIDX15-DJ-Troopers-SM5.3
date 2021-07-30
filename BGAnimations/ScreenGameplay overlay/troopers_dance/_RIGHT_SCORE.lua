return Def.ActorFrame{
	LoadActor("RIGHT_SCORE.png")..{
	InitCommand=cmd(x,0;y,0);
	};
	LoadFont("ScoreDisplayNormal Text")..{
	InitCommand=cmd(x,80;y,50;horizalign,right);
	Text="     0";
		JudgmentMessageCommand=function(self,params)
			local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2)
			local score = stats:GetScore();
			self:settext(string.format("%6d",score))
	end;
	};
}