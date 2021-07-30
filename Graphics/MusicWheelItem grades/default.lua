-- This actor is duplicated.  Upvalues will not be duplicated.

local grades = {
	Grade_Tier01 = 0;
	Grade_Tier02 = 1;
	Grade_Tier03 = 2;
	Grade_Tier04 = 3;
	Grade_Tier05 = 4;
	Grade_Tier06 = 5;
	Grade_Tier07 = 6;
	Grade_Failed = 7;
	Grade_None = nil;
};

local t = LoadActor( "grades" ) .. {
	InitCommand=cmd(addy,8;blend,'BlendMode_Add';pause;diffuseshift;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0.5");effectperiod,0.02);
	SetGradeCommand=function(self, params)
		local state = grades[params.Grade];
		if state then
			self:visible( true );
			state = state*2;

			if params.PlayerNumber == PLAYER_2 then
				state = state+1;
			end

			self:setstate(state);
		else
			self:visible( false );
		end;
	end;
};

return t;