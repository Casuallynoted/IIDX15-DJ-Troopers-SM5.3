local t = Def.ActorFrame{};

if not GAMESTATE:IsCourseMode() then return t; end;

t[#t+1] = Def.Quad {
	InitCommand=cmd(FullScreen;diffuse,color("0,0,0,0"));
	BeforeLoadingNextCourseSongMessageCommand=cmd(sleep,3;linear,1;diffusealpha,1);
	ChangeCourseSongInMessageCommand=cmd(sleep,3;linear,1;diffusealpha,1);
	StartCommand=cmd(diffusealpha,0;decelerate,0.5;diffusealpha,1;);
	FinishCommand=cmd(linear,.3;diffusealpha,0);
};

return t;