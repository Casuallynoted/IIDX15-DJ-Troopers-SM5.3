local gc = Var("GameCommand");
return Def.ActorFrame {
	Def.BitmapText { File = "choices.ini" }..{
		Name="Main";
		Text=gc:GetText();
		InitCommand=cmd(y,60;diffuseblink;effectperiod,0.5;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0"));
		GainFocusCommand=cmd(stoptweening;diffusealpha,1);
		LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
	};
};