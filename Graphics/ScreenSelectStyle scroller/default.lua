local gc = Var "GameCommand";
local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("_SelectIcon " ..string.format(gc:GetName() )) .. {
	InitCommand=cmd();
		DisabledCommand=cmd(diffuse,color("0.5,0.5,0.5,1"));
		EnabledCommand=cmd(diffuse,color("1,1,1,1"));
	};
};
return t