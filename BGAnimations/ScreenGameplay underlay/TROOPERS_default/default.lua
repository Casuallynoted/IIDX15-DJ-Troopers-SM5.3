local t = Def.ActorFrame{
	Def.Quad{
		InitCommand=cmd();
		OnCommand=function(self,param)
			SCREENMAN:GetTopScreen():GetChild("SongBackground"):zoomto(.5,.88)
			SCREENMAN:GetTopScreen():GetChild("SongBackground"):x(SCREEN_WIDTH/4)
		end;
	};
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
		OnCommand=cmd(diffuse,color("#000000");sleep,.6;linear,.3;diffuse,color("#FFFFFF");sleep,2.2;linear,.3;diffusealpha,0);
	};
	LoadFont("title")..{
		InitCommand=cmd(diffuse,color("#000000");x,320;y,SCREEN_CENTER_Y-60;horizalign,center;zoomy,1.6;shadowlength,0;maxwidth,290;sleep,.9;sleep,2.2;linear,.3;diffusealpha,0);
		OnCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end;
			self:visible(true)
			self:settext(song:GetDisplayMainTitle())
		end;
	};
	LoadFont("Gameplay Genre")..{
		InitCommand=cmd(diffuse,color("#000000");x,320;y,SCREEN_CENTER_Y-120;horizalign,center;shadowlength,0;maxwidth,290;diffusealpha,0;sleep,.6;linear,.3;diffusealpha,1;sleep,2.2;linear,.3;diffusealpha,0);
		OnCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:visible(true)
			if song:GetGenre() ~= "" then
				self:settext(song:GetGenre())
			else
				self:settext(GenreGen.Generate())
			end
		end
	};
	LoadFont("artist 16px")..{
		InitCommand=cmd(x,320;y,SCREEN_CENTER_Y+50;horizalign,center;zoom,0.7;shadowlength,0;maxwidth,310;diffusealpha,0;sleep,.6;linear,.3;diffusealpha,1;sleep,2.2;linear,.3;diffusealpha,0),
		OnCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:visible(true)
			self:settext(song:GetDisplayArtist())
		end
	},
	LoadActor(THEME:GetPathB("", "SONG_INFO/MODE"))..{
	InitCommand=cmd(y,-200);
	};
	LoadActor("SHIELD_LEFT")..{
	InitCommand=cmd(vertalign,top;x,246;y,SCREEN_TOP);
	OnCommand=cmd(addy,30;diffusealpha,0;sleep,.15;linear,.25;addy,-30;diffusealpha,1;sleep,.2;linear,.2;addx,-150;cropleft,1);
	};
	LoadActor("SHIELD_RIGHT")..{
	InitCommand=cmd(vertalign,top;x,395;y,SCREEN_TOP);
	OnCommand=cmd(addy,30;diffusealpha,0;sleep,.15;linear,.25;addy,-30;diffusealpha,1;sleep,.2;linear,.2;addx,150;cropright,1);
	};
	LoadActor("B_LEFT")..{
	InitCommand=cmd(horizalign,left;vertalign,top;x,SCREEN_LEFT;y,SCREEN_TOP);
	OnCommand=cmd(addy,430;sleep,.25;linear,.2;addy,-430;);
	};
	LoadActor("NOTE_P1")..{
	InitCommand=cmd(vertalign,top;x,89;y,SCREEN_TOP);
	OnCommand=cmd(addy,-430;sleep,.25;linear,.2;addy,430;);
	};
	LoadActor("BUTTON_P1")..{
	InitCommand=cmd(x,113;y,SCREEN_CENTER_Y+107);
	OnCommand=cmd(addy,46;cropbottom,1;diffusealpha,0;sleep,.35;linear,.1;addy,-46;cropbottom,0;diffusealpha,1);
	};
	LoadActor("BUTTON_P2")..{
	InitCommand=cmd(x,528;y,SCREEN_CENTER_Y+107);
	OnCommand=cmd(addy,46;cropbottom,1;diffusealpha,0;sleep,.35;linear,.1;addy,-46;cropbottom,0;diffusealpha,1);
	};
	LoadActor("B_RIGHT")..{
	InitCommand=cmd(horizalign,right;vertalign,top;x,640;y,SCREEN_TOP);
	OnCommand=cmd(addy,430;sleep,.25;linear,.2;addy,-430;);
	};
	LoadActor("NOTE_P2")..{
	InitCommand=cmd(vertalign,top;x,552;y,SCREEN_TOP);
	OnCommand=cmd(addy,-430;sleep,.25;linear,.2;addy,430;);
	};
	LoadActor("HI-SPEED_P1")..{
	InitCommand=cmd(x,196;y,SCREEN_CENTER_Y+186);
	OnCommand=cmd(addx,-50;diffusealpha,0;sleep,.3;linear,.1;addx,50;diffusealpha,1);
	};
	LoadActor("INFO_P1")..{
	InitCommand=cmd(vertalign,bottom;x,192;y,SCREEN_BOTTOM);
	OnCommand=cmd(addy,-10;diffusealpha,0;sleep,.3;linear,.15;addy,10;diffusealpha,1);
	};
	LoadActor("HI-SPEED_P2")..{
	InitCommand=cmd(x,445;y,SCREEN_CENTER_Y+186);
	OnCommand=cmd(addx,50;diffusealpha,0;sleep,.3;linear,.1;addx,-50;diffusealpha,1);
	};
	LoadActor("INFO_P2")..{
	InitCommand=cmd(vertalign,bottom;x,448;y,SCREEN_BOTTOM);
	OnCommand=cmd(addy,-10;diffusealpha,0;sleep,.3;linear,.15;addy,10;diffusealpha,1);
	};
	LoadActor("_SCORE_P1.lua")..{
	InitCommand=cmd();
	OnCommand=cmd(addx,-260;sleep,.1;linear,.2;addx,260);
	};
	LoadActor("SCORE_P2")..{
	InitCommand=cmd(horizalign,right;vertalign,bottom;x,640;y,SCREEN_BOTTOM);
	OnCommand=cmd(addx,260;sleep,.1;linear,.2;addx,-260;);
	};
	LoadActor("_LIFE_P1")..{
	InitCommand=cmd(x,120;y,SCREEN_CENTER_Y+134);
	OnCommand=cmd(addx,-260;diffusealpha,0;sleep,.2;linear,.2;addx,260;diffusealpha,1;linear,.05;addy,2;linear,.05;addy,-2);
	};
	LoadActor("LIFE_P2")..{
	InitCommand=cmd(x,520;y,SCREEN_CENTER_Y+134);
	OnCommand=cmd(addx,260;diffusealpha,0;sleep,.2;linear,.2;addx,-260;diffusealpha,1;linear,.05;addy,2;linear,.05;addy,-2);
	};
	LoadActor("BPM")..{
	InitCommand=cmd(vertalign,bottom;x,320;y,SCREEN_BOTTOM);
	OnCommand=cmd(addy,-10;diffusealpha,0;sleep,.1;linear,.2;addy,10;diffusealpha,1);
	};
	Def.SongBPMDisplay{
	File=THEME:GetPathF("", "Gameplay BPM");
	Name="BPMDisplay";
	InitCommand=cmd(x,320;y,511;diffusealpha,1);
	OnCommand=function(self) self:SetFromGameState() end;
	};
	LoadActor("JOIN")..{
	InitCommand=cmd(x,257;y,SCREEN_CENTER_Y+192);
	OnCommand=cmd(addx,10;diffusealpha,0;sleep,.1;linear,.1;addx,-10;diffusealpha,1);
	};
	LoadActor("JOIN")..{
	InitCommand=cmd(x,383;y,SCREEN_CENTER_Y+192);
	OnCommand=cmd(addx,-10;diffusealpha,0;sleep,.1;linear,.1;addx,10;diffusealpha,1);
	};
	LoadActor("EFFECTOR")..{
	InitCommand=cmd(vertalign,bottom;x,320;y,SCREEN_BOTTOM);
	OnCommand=cmd(addy,100;linear,.2;addy,-100);
	};
	LoadActor("HIBANA")..{
	};
	LoadActor(THEME:GetPathB("", "SONG_INFO/DIFFICULTY"))..{
	};
	LoadActor(THEME:GetPathB("", "SONG_INFO/STAGE"))..{
	};
	LoadActor("TIME_DISPLAY")..{
	InitCommand=cmd(x,20;y,162;rotationz,90;draworder,1;halign,0.5);
	};
	LoadActor("../_troopers_fullcombo")..{
	};
};

return t;