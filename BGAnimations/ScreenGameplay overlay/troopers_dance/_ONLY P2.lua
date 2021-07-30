return Def.ActorFrame{
	LoadActor("_LEFT_MAXCOMBO.lua")..{
	InitCommand=cmd(x,135;y,448);
	OnCommand=cmd(addx,-260;sleep,.05;linear,.25;addx,260;linear,.05;addy,2;linear,.05;addy,-2);
	};
	LoadActor("_RIGHT_SCORE.lua")..{
	InitCommand=cmd(x,505;y,448);
	OnCommand=cmd(addx,260;sleep,.05;linear,.25;addx,-260;linear,.05;addy,2;linear,.05;addy,-2;);
	};
}