return 	Def.ActorFrame {

	Def.SongMeterDisplay {
		StreamWidth=269;

		Stream=Def.Quad {
			InitCommand=cmd(diffusealpha,0);
		};

		Tip=LoadActor("SONG_TIP")..{
			InitCommand=cmd(blend,'BlendMode_Add';diffuseshift;effectclock,'bgm';effectperiod,2;effectcolor1,1,1,1,1;effectcolor2,1,1,1,.5);
			OnCommand=cmd(addx,134;diffusealpha,0;sleep,.4;linear,.2;diffusealpha,1;decelerate,1;addx,-134);
			OffCommand=cmd(diffusealpha,1);
		};
	};

};