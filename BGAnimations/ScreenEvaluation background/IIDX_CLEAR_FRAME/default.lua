local t = Def.ActorFrame{
	-- P1 --
	LoadActor("1P_SCORE")..{
	InitCommand=cmd(horizalign,left;x,25;y,SCREEN_CENTER_Y-5);
	OnCommand=cmd(diffusealpha,.9;addx,-320;linear,0.2;addx,320);
	};
	LoadActor("1P_NOTES")..{
	InitCommand=cmd(horizalign,left;x,25;y,SCREEN_CENTER_Y+18);
	OnCommand=cmd(diffusealpha,.9;addx,-320;sleep,.05;linear,0.2;addx,320);
	};
	LoadActor("1P_MAXCOMBO")..{
	InitCommand=cmd(horizalign,left;x,25;y,SCREEN_CENTER_Y+43);
	OnCommand=cmd(diffusealpha,.9;addx,-320;sleep,.1;linear,0.2;addx,320);
	};
	------------------------------------------------------------------------
	LoadActor("1P_PIKAGRE")..{ --PERFECT--dance
	InitCommand=cmd(horizalign,left;x,25;y,SCREEN_CENTER_Y+70;visible,GAMESTATE:GetCurrentGame():GetName() == "beat");
	OnCommand=cmd(diffusealpha,.9;addx,-320;sleep,.15;linear,0.2;addx,320);
	};
	Def.Sprite {
		Texture="_GREAT 1x3.png";
			Frame0000=0;
			Delay0000=0.01;
			Frame0001=1;
			Delay0001=0.01;
			Frame0002=2;
			Delay0002=0.01;
	InitCommand=cmd(visible,GAMESTATE:GetCurrentGame():GetName() == "beat";horizalign,left;x,40;y,SCREEN_CENTER_Y+69;addx,-320;sleep,.15;linear,0.2;addx,320);
	};
	------------------------------------------------------------------------
	LoadActor("1P_PERFECT")..{ --PERFECT--pump
	InitCommand=cmd(horizalign,left;x,25;y,SCREEN_CENTER_Y+70;visible,GAMESTATE:GetCurrentGame():GetName() == "pump");
	OnCommand=cmd(diffusealpha,.9;addx,-320;sleep,.15;linear,0.2;addx,320);
	};
	Def.Sprite {
		Texture="_PERF 1x3.png";
			Frame0000=0;
			Delay0000=0.01;
			Frame0001=1;
			Delay0001=0.01;
			Frame0002=2;
			Delay0002=0.01;
	InitCommand=cmd(visible,GAMESTATE:GetCurrentGame():GetName() == "pump";horizalign,left;x,39;y,SCREEN_CENTER_Y+69;addx,-320;sleep,.15;linear,0.2;addx,320);
	};
	------------------------------------------------------------------------
	LoadActor("1P_GRE")..{
	InitCommand=cmd(horizalign,left;x,25;y,SCREEN_CENTER_Y+93);
	OnCommand=cmd(diffusealpha,.9;addx,-320;sleep,.2;linear,0.2;addx,320);
	};
	LoadActor("1P_GOOD")..{
	InitCommand=cmd(horizalign,left;x,25;y,SCREEN_CENTER_Y+116);
	OnCommand=cmd(diffusealpha,.9;addx,-320;sleep,.25;linear,0.2;addx,320);
	};
	LoadActor("1P_BAD")..{
	InitCommand=cmd(horizalign,left;x,25;y,SCREEN_CENTER_Y+139);
	OnCommand=cmd(diffusealpha,.9;addx,-320;sleep,.3;linear,0.2;addx,320);
	};
	LoadActor("1P_POOR")..{
	InitCommand=cmd(horizalign,left;x,25;y,SCREEN_CENTER_Y+163;visible,GAMESTATE:GetCurrentGame():GetName() == "beat");
	OnCommand=cmd(diffusealpha,.9;addx,-320;sleep,.35;linear,0.2;addx,320);
	};
	LoadActor("1P_MISS")..{
	InitCommand=cmd(horizalign,left;x,25;y,SCREEN_CENTER_Y+163;visible,GAMESTATE:GetCurrentGame():GetName() == "pump");
	OnCommand=cmd(diffusealpha,.9;addx,-320;sleep,.35;linear,0.2;addx,320);
	};
	LoadActor("1P_TOTAL")..{
	InitCommand=cmd(horizalign,left;x,25;y,SCREEN_CENTER_Y+194);
	OnCommand=cmd(diffusealpha,.9;addx,-320;sleep,.4;linear,0.2;addx,320);
	};
	-- P2 --
	LoadActor("2P_SCORE")..{
	InitCommand=cmd(horizalign,right;x,616;y,SCREEN_CENTER_Y-5);
	OnCommand=cmd(diffusealpha,.9;addx,320;linear,0.2;addx,-320);
	};
	LoadActor("2P_NOTES")..{
	InitCommand=cmd(horizalign,right;x,616;y,SCREEN_CENTER_Y+18);
	OnCommand=cmd(diffusealpha,.9;addx,320;sleep,.05;linear,0.2;addx,-320);
	};
	LoadActor("2P_MAXCOMBO")..{
	InitCommand=cmd(horizalign,right;x,616;y,SCREEN_CENTER_Y+43);
	OnCommand=cmd(diffusealpha,.9;addx,320;sleep,.1;linear,0.2;addx,-320);
	};
	LoadActor("2P_PIKAGRE")..{
	InitCommand=cmd(horizalign,right;x,616;y,SCREEN_CENTER_Y+70;visible,GAMESTATE:GetCurrentGame():GetName() == "beat");
	OnCommand=cmd(diffusealpha,.9;addx,320;sleep,.15;linear,0.2;addx,-320);
	};
	Def.Sprite {
		Texture="_GREAT 1x3.png";
			Frame0000=0;
			Delay0000=0.01;
			Frame0001=1;
			Delay0001=0.01;
			Frame0002=2;
			Delay0002=0.01;
	InitCommand=cmd(;visible,GAMESTATE:GetCurrentGame():GetName() == "beat";horizalign,left;x,539;y,SCREEN_CENTER_Y+69;addx,320;sleep,.15;linear,0.2;addx,-320);
	};
	LoadActor("2P_PERFECT")..{
	InitCommand=cmd(horizalign,right;x,616;y,SCREEN_CENTER_Y+70;visible,GAMESTATE:GetCurrentGame():GetName() == "pump");
	OnCommand=cmd(diffusealpha,.9;addx,320;sleep,.15;linear,0.2;addx,-320);
	};
	Def.Sprite {
		Texture="_PERF 1x3.png";
			Frame0000=0;
			Delay0000=0.01;
			Frame0001=1;
			Delay0001=0.01;
			Frame0002=2;
			Delay0002=0.01;
	InitCommand=cmd(;visible,GAMESTATE:GetCurrentGame():GetName() == "pump";horizalign,left;x,535;y,SCREEN_CENTER_Y+69;addx,320;sleep,.15;linear,0.2;addx,-320);
	};
	LoadActor("2P_GRE")..{
	InitCommand=cmd(horizalign,right;x,616;y,SCREEN_CENTER_Y+93);
	OnCommand=cmd(diffusealpha,.9;addx,320;sleep,.2;linear,0.2;addx,-320);
	};
	LoadActor("2P_GOOD")..{
	InitCommand=cmd(horizalign,right;x,616;y,SCREEN_CENTER_Y+116);
	OnCommand=cmd(diffusealpha,.9;addx,320;sleep,.25;linear,0.2;addx,-320);
	};
	LoadActor("2P_BAD")..{
	InitCommand=cmd(horizalign,right;x,616;y,SCREEN_CENTER_Y+139);
	OnCommand=cmd(diffusealpha,.9;addx,320;sleep,.3;linear,0.2;addx,-320);
	};
	LoadActor("2P_POOR")..{
	InitCommand=cmd(horizalign,right;x,616;y,SCREEN_CENTER_Y+163;visible,GAMESTATE:GetCurrentGame():GetName() == "beat");
	OnCommand=cmd(diffusealpha,.9;addx,320;sleep,.35;linear,0.2;addx,-320);
	};
	LoadActor("2P_MISS")..{
	InitCommand=cmd(horizalign,right;x,616;y,SCREEN_CENTER_Y+163;visible,GAMESTATE:GetCurrentGame():GetName() == "pump");
	OnCommand=cmd(diffusealpha,.9;addx,320;sleep,.35;linear,0.2;addx,-320);
	};
	LoadActor("2P_TOTAL")..{
	InitCommand=cmd(horizalign,right;x,616;y,SCREEN_CENTER_Y+194);
	OnCommand=cmd(diffusealpha,.9;addx,320;sleep,.4;linear,0.2;addx,-320);
	};
	LoadActor("GLOW.png")..{
	InitCommand=cmd(x,28;blend,'BlendMode_Add';diffuseblink;effectperiod,0.05;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0");visible,GAMESTATE:IsPlayerEnabled(PLAYER_1);diffusealpha,0;sleep,.4;diffusealpha,1);
	OnCommand=function(self,params)
		local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1)
		local w2 = stats:GetTapNoteScores('TapNoteScore_W2')
		local w3 = stats:GetTapNoteScores('TapNoteScore_W3')
		local w4 = stats:GetTapNoteScores('TapNoteScore_W4')
		local w5 = stats:GetTapNoteScores('TapNoteScore_W5')
		local miss = stats:GetTapNoteScores('TapNoteScore_Miss')
		if w2 >= w3 and w2 > w4 and w2 > w5 and w2 > miss then
			self:y(SCREEN_CENTER_Y+69)
			end;
		if w3 > w2 and w3 > w4 and w3 > w5 and w3 > miss then
			self:y(SCREEN_CENTER_Y+92)
			end;
		if w4 > w2 and w4 > w3 and w4 > w5 and w4 > miss then
			self:y(SCREEN_CENTER_Y+115)
			end;
		if w5 > w2 and w5 > w3 and w5 > w4 and w5 > miss then
			self:y(SCREEN_CENTER_Y+138)
			end;
		if miss > w2 and miss > w3 and miss > w4 and miss > w5 then
			self:y(SCREEN_CENTER_Y+161)
			end;
		end;
	};
	LoadActor("GLOW.png")..{
	InitCommand=cmd(x,612;blend,'BlendMode_Add';diffuseblink;effectperiod,0.05;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0");visible,GAMESTATE:IsPlayerEnabled(PLAYER_2);diffusealpha,0;sleep,.4;diffusealpha,1);
	OnCommand=function(self,params)
		local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2)
		local w2 = stats:GetTapNoteScores('TapNoteScore_W2')
		local w3 = stats:GetTapNoteScores('TapNoteScore_W3')
		local w4 = stats:GetTapNoteScores('TapNoteScore_W4')
		local w5 = stats:GetTapNoteScores('TapNoteScore_W5')
		local miss = stats:GetTapNoteScores('TapNoteScore_Miss')
		if w2 >= w3 and w2 > w4 and w2 > w5 and w2 > miss then
			self:y(SCREEN_CENTER_Y+69)
			end;
		if w3 > w2 and w3 > w4 and w3 > w5 and w3 > miss then
			self:y(SCREEN_CENTER_Y+92)
			end;
		if w4 > w2 and w4 > w3 and w4 > w5 and w4 > miss then
			self:y(SCREEN_CENTER_Y+115)
			end;
		if w5 > w2 and w5 > w3 and w5 > w4 and w5 > miss then
			self:y(SCREEN_CENTER_Y+138)
			end;
		if miss > w2 and miss > w3 and miss > w4 and miss > w5 then
			self:y(SCREEN_CENTER_Y+161)
			end;
		end;
	};
	LoadActor("_P1_NUMBERS")..{
	InitCommand=cmd(y,999;sleep,.6;y,0);
	Condition=GAMESTATE:IsPlayerEnabled(PLAYER_1);
	};
	LoadActor("_P2_NUMBERS")..{
	InitCommand=cmd(y,999;sleep,.6;y,0);
	Condition=GAMESTATE:IsPlayerEnabled(PLAYER_2);
	};
};

return t;