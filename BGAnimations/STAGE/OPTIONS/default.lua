local DifficultyToFrame = {
	Difficulty_Beginner	 = 0,
	Difficulty_Easy		 = 1,
	Difficulty_Medium	 = 2,
	Difficulty_Hard		 = 3,
	Difficulty_Challenge = 4,
	Difficulty_Edit		 = 5,
};
local StageToFrame = {
	Stage_1st		= 0,
	Stage_2nd		= 1,
	Stage_3rd		= 2,
	Stage_4th		= 3,
	Stage_5th		= 4,
	Stage_6th		= 5,
	Stage_Final		= 6,
	Stage_Extra1	= 7,
	Stage_Extra2	= 8,
	Stage_Event		= 9,
	Stage_Nonstop	= 10,
	Stage_Oni		= 11
};
function GetLocalProfiles()
	local ret = {};

	for p = 0,PROFILEMAN:GetNumLocalProfiles()-1 do
		local profile=PROFILEMAN:GetLocalProfileFromIndex(p);
		local item = Def.ActorFrame {
		LoadActor("_diff 1x6.png")..{
		InitCommand=cmd(blend,'BlendMode_Add';horizalign,right;x,293;y,-199;animate,false;setstate,0);
		OffCommand=cmd(;addx,-10;diffusealpha,0;sleep,.4;linear,.2;addx,10;diffusealpha,1);
		OnCommand=function(self)
			self:setstate(DifficultyToFrame[GAMESTATE:GetHardestStepsDifficulty()]);
		end;
		};
		LoadActor("_stage 1x12.png")..{
		InitCommand=cmd(blend,'BlendMode_Add';horizalign,left;x,-304;y,-199;animate,false;setstate,0;addx,10);
		OffCommand=cmd(;diffusealpha,0;sleep,.4;linear,.2;addx,-10;diffusealpha,1);
		OnCommand=function(self)
			self:setstate(StageToFrame[GAMESTATE:GetCurrentStage()]);
		end;
		};
		LoadActor("P1.png")..{
		InitCommand=cmd();
		Condition=GAMESTATE:IsPlayerEnabled(PLAYER_1) and not GAMESTATE:IsPlayerEnabled(PLAYER_2)
		};
		LoadActor("P2.png")..{
		InitCommand=cmd();
		Condition=GAMESTATE:IsPlayerEnabled(PLAYER_2) and not GAMESTATE:IsPlayerEnabled(PLAYER_1)
		};
		LoadActor("2P.png")..{
		InitCommand=cmd();
		Condition=GAMESTATE:IsPlayerEnabled(PLAYER_1) and GAMESTATE:IsPlayerEnabled(PLAYER_2)
		};
	};
		table.insert( ret, item );
	end;

	return ret;
end;

local t = Def.ActorFrame {
	children = {
		Def.ActorFrame {
			OffCommand=cmd(x,320;y,240;zoom,1;sleep,2.4;linear,.6;zoom,.6);
			InitCommand=function(self,param)
			end;
			children = GetLocalProfiles();
		};
		Def.ActorFrame {
			OffCommand=cmd(diffusealpha,.6;x,320;y,240;addy,-999;zoom,1;sleep,2.4;addy,999;linear,.6;zoom,1.3);
			InitCommand=function(self,param)
			end;
			children = GetLocalProfiles();
		};
		Def.ActorFrame {
			OffCommand=cmd(diffusealpha,.6;x,320;y,240;addy,-999;zoom,1;sleep,2.4;addy,999;linear,.6;zoom,2);
			InitCommand=function(self,param)
			end;
			children = GetLocalProfiles();
		};
	};
};
return t;