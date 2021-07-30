local t = Def.ActorFrame {
	LoadActor( "_Fullcombolight01" ) .. {
		InitCommand=cmd(spin;effectmagnitude,0,0,150);	
	};
	LoadActor( "_Fullcombolight02" ) .. {
		InitCommand=cmd(spin;effectmagnitude,0,0,-150);	
	};
};
return t;