local t = LoadFallbackB()
if( not GAMESTATE:IsCourseMode() ) then
t[#t+1] = Def.Actor{
	JudgmentMessageCommand = function(self, params)
		Scoring[GetUserPref("UserPrefScoringMode")](params, 
			STATSMAN:GetCurStageStats():GetPlayerStageStats(params.Player))
	end;
};
end;

return t
