local t = Def.ActorFrame {
	LoadActor("texture/_standard.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+65);
		OnCommand=cmd(diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;diffusealpha,0;sleep,.48;diffusealpha,1);
		LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
	};
Def.Sprite {
		Texture="_standard 1x16.png";
			Frame0000=0;
			Delay0000=0.03;
			Frame0001=1;
			Delay0001=0.03;
			Frame0002=2;
			Delay0002=0.03;
			Frame0003=3;
			Delay0003=0.03;
			Frame0004=4;
			Delay0004=0.03;
			Frame0005=5;
			Delay0005=0.03;
			Frame0006=6;
			Delay0006=0.03;
			Frame0007=7;
			Delay0007=0.03;
			Frame0008=8;
			Delay0008=0.03;
			Frame0009=9;
			Delay0009=0.03;
			Frame0010=10;
			Delay0010=0.03;
			Frame0011=11;
			Delay0011=0.03;
			Frame0012=12;
			Delay0012=0.03;
			Frame0013=13;
			Delay0013=0.03;
			Frame0014=14;
			Delay0014=0.03;
			Frame0015=15;
			Delay0015=0.03;
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+65);
		OnCommand=cmd(diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;loop,0;diffusealpha,1;setstate,0;sleep,self:GetAnimationLengthSeconds();diffusealpha,0);
		LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
	};
	LoadActor("texture/style2.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-48;y,SCREEN_CENTER_Y-88);
		OnCommand=cmd(vertalign,top;;zoomy,100;diffusealpha,0;sleep,0.5;diffusealpha,1;linear,0.1;zoomy,1);
		OffCommand=cmd(diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;diffusealpha,1);
		LoseFocusCommand=cmd(stoptweening;diffusealpha,1);
	};
	LoadActor("texture/style1.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-48;y,SCREEN_CENTER_Y-136);
		OnCommand=cmd(vertalign,top;zoomy,100;diffusealpha,0;sleep,0.5;diffusealpha,1;linear,0.1;zoomy,1);
		OffCommand=cmd(diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;diffusealpha,1;linear,0.1;y,SCREEN_CENTER_Y-131);
		LoseFocusCommand=cmd(stoptweening;diffusealpha,1;linear,0.1;y,SCREEN_CENTER_Y-136);
	};
	LoadActor("texture/style3.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-48;y,SCREEN_CENTER_Y-48);
		OnCommand=cmd(vertalign,top;zoomy,100;diffusealpha,0;sleep,0.5;diffusealpha,1;linear,0.1;zoomy,1);
		OffCommand=cmd(diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;diffusealpha,1;linear,0.1;y,SCREEN_CENTER_Y-53);
		LoseFocusCommand=cmd(stoptweening;diffusealpha,1;linear,0.1;y,SCREEN_CENTER_Y-48);
	};
	LoadActor("texture/style4.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-48;y,SCREEN_CENTER_Y-48);
		OnCommand=cmd(diffusealpha,0);
		OffCommand=cmd(diffusealpha,0);
		GainFocusCommand=cmd(diffusealpha,0;linear,0.1;diffusealpha,1;);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	LoadActor("texture/style5.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-47;y,SCREEN_CENTER_Y-48);
		OnCommand=cmd(blend,'BlendMode_Add';diffusealpha,0);
		OffCommand=cmd(diffusealpha,0);
		GainFocusCommand=cmd(blend,'BlendMode_Add';diffusealpha,0;linear,0.1;diffusealpha,1);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	LoadActor("texture/MINI_DECIDE.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-64;y,SCREEN_CENTER_Y-16);
		OnCommand=cmd(diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;diffusealpha,1;cropright,1;linear,0.2;cropright,0);
		LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
	};
	LoadActor("texture/standard-info.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+130);
		OnCommand=cmd(diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;diffusealpha,0;y,SCREEN_CENTER_Y+125;linear,.2;y,SCREEN_CENTER_Y+130;diffusealpha,1);
		LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
	};
	LoadActor("texture/standard-info.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+130);
		OnCommand=cmd(blend,'BlendMode_Add';diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;diffusealpha,0;sleep,.2;diffusealpha,1;linear,.05;diffusealpha,0;linear,.05;diffusealpha,1;linear,.05;diffusealpha,0);
		LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
	};
	LoadActor("texture/standard-name.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-48;y,SCREEN_CENTER_Y-64);
		OnCommand=cmd(diffusealpha,0;sleep,.6;diffusealpha,1);
		OffCommand=cmd(diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;diffusealpha,1);
		LoseFocusCommand=cmd(stoptweening;diffusealpha,1);
	};
	--DECIDE--
	LoadActor("_decide")..{
	};
	LoadActor("texture/standard.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0);
		OffFocusedCommand=cmd(diffusealpha,0.8;zoom,3;linear,.2;zoom,2;linear,0.15;zoom,1);
	};
	LoadActor("texture/standard-blend.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-5);
		OnCommand=cmd(diffusealpha,0);
		OffFocusedCommand=cmd(blend,'BlendMode_Add';diffusealpha,0.6;zoomy,0;sleep,0.6;linear,0.2;zoomy,1;sleep,1.4;linear,0.3;diffusealpha,0);
	};
	LoadActor("texture/standard-stroke.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-5);
		OnCommand=cmd(diffusealpha,0);
		OffFocusedCommand=cmd(blend,'BlendMode_Add';zoom,.6;diffusealpha,0;sleep,.2;diffusealpha,1;linear,.3;zoom,1.8;diffusealpha,0);
	};
};

return t;