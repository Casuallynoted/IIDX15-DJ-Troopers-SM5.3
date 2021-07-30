return 	Def.ActorFrame {

	Def.SongMeterDisplay {
		StreamWidth=85;

		Stream=Def.Quad {
			InitCommand=cmd(diffusealpha,0);
		};

		Tip=LoadActor("SONG_TIP")..{
			InitCommand=cmd(diffuseshift;effectclock,'bgm';effectperiod,2;effectcolor1,1,1,1,1;effectcolor2,1,1,1,.8);
			OnCommand=cmd(addx,42;diffusealpha,0;sleep,.4;linear,.2;diffusealpha,1;decelerate,1;addx,-42);
			OffCommand=cmd(diffusealpha,1);
		};
	};

};