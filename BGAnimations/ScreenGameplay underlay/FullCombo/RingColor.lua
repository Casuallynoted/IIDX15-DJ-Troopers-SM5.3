local t = Def.ActorFrame {
	LoadActor( "_Fullcombo01" ) .. {
		InitCommand=cmd(spin;effectmagnitude,0,0,150);	
	};
	LoadActor( "_Fullcombo02" ) .. {
		InitCommand=cmd(spin;effectmagnitude,0,0,-150);	
	};
};
return t;