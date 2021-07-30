return Def.ActorFrame{
	--LEFT SCORE
	LoadActor("RIGHT_MAXCOMBO.png")..{
	InitCommand=cmd(x,0;y,0);
	};
	LoadFont("ScoreDisplayNormal Text")..{
		Text="   0";
		InitCommand=cmd(x,23;y,50),
		ComboChangedMessageCommand=function(self,param)
		if param.Player == PLAYER_1 then
			self:visible(true);
		else
			self:visible(false);
		end;
			local pss = param.PlayerStageStats
			local curCombo = pss:GetCurrentCombo();
			local maxCombo = pss:MaxCombo();
			if curCombo > maxCombo then
				self:settext(string.format("%4d",curCombo))
			end;
		end;
	};
}