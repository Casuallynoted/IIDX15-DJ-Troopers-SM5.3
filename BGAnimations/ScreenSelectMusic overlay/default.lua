return Def.ActorFrame {
	LoadActor(THEME:GetPathG("","_shared header"))..{
	},
	LoadActor(THEME:GetPathG("","_shared header/INFO_1"))..{
	},
	LoadActor("RED_LIGHT.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP;vertalign,top;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
		OnCommand=cmd(diffusealpha,0;playcommand,"Animate");
		AnimateCommand=cmd(blend,'BlendMode_Add';hidden,1;linear,1;diffusealpha,0;linear,0;diffusealpha,1;queuecommand,"Animate")
	};
	LoadActor("MUSIC_T.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X-245,SCREEN_CENTER_X-345);y,SCREEN_CENTER_Y-214;visible,GAMESTATE:GetPlayMode() == 'PlayMode_Regular');
		OnCommand=cmd(addx,-10;diffusealpha,0;sleep,0.5;linear,0.3;addx,10;diffusealpha,1);
	};
	LoadActor("EXPERT_T.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X-245,SCREEN_CENTER_X-345);y,SCREEN_CENTER_Y-214;visible,GAMESTATE:GetPlayMode() == 'PlayMode_Nonstop' or GAMESTATE:GetPlayMode() == 'PlayMode_Oni');
		OnCommand=cmd(addx,-10;diffusealpha,0;sleep,0.5;linear,0.3;addx,10;diffusealpha,1);
	};
	LoadActor(THEME:GetPathG("","time"))..{
	};
	LoadActor(THEME:GetPathB("","active_line"))..{
		InitCommand=cmd(diffusealpha,0);
	};
	LoadActor(THEME:GetPathG("","_shared header/here_or_not"))..{
	},
}