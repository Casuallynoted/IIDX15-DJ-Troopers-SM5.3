local t = Def.ActorFrame{
	Def.Quad{
	InitCommand=cmd(diffuse,color("#000000");zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT;x,SCREEN_CENTER_X;y,240;sleep,1;linear,.4;diffusealpha,0;);
	};
	Def.Quad{
	InitCommand=cmd(zoomtowidth,SCREEN_WIDTH;zoomtoheight,220;x,SCREEN_CENTER_X;y,250;diffusealpha,0;sleep,1;linear,.2;diffusealpha,0.5;sleep,1.8;linear,.2;diffusealpha,0);
	};
	Def.Quad{
	InitCommand=cmd(zoomtowidth,SCREEN_WIDTH;zoomtoheight,220;x,SCREEN_CENTER_X;y,250;diffusealpha,0;sleep,3;linear,0;diffusealpha,1;linear,.3;zoomy,0);
	};
	----------------------------------------------------------------------------------------------------------
	--REGULAR--
	--Only P1 (Regular)--
	LoadActor("_ONLY P1.lua")..{
	InitCommand=cmd(x,0;y,0);
	Condition=GAMESTATE:IsPlayerEnabled(PLAYER_1) and not GAMESTATE:IsPlayerEnabled(PLAYER_2)
	};
	--Only P2 (Regular)--
	LoadActor("_ONLY P2.lua")..{
	InitCommand=cmd(x,0;y,0);
	Condition=GAMESTATE:IsPlayerEnabled(PLAYER_2) and not GAMESTATE:IsPlayerEnabled(PLAYER_1)
	};
	--Versus (Regular)--
	LoadActor("_VERSUS.lua")..{
	InitCommand=cmd(x,0;y,0);
	Condition=GAMESTATE:GetCurrentStyle():GetName() == 'versus'
	};
	LoadActor("_BANNER.lua")..{
	InitCommand=cmd(x,320;y,452);
	OnCommand=cmd(addy,50;linear,.2;addy,-50;sleep,.1;linear,.05;addy,2;linear,.05;addy,-2;);
	};
	LoadActor("_LIFE_P1.lua")..{
	InitCommand=cmd(x,139;y,27);
	OnCommand=cmd(addx,-260;linear,.2;addx,260;linear,.05;addy,-2;linear,.05;addy,2;);
	};
	LoadActor("_LIFE_P2.lua")..{
	InitCommand=cmd(x,501;y,27);
	OnCommand=cmd(addx,260;linear,.2;addx,-260;linear,.05;addy,-2;linear,.05;addy,2);
	};
	LoadActor("BPM.png")..{
	InitCommand=cmd(x,321;y,31);
	OnCommand=cmd(addy,-50;linear,.2;addy,50;linear,.05;addy,-2;linear,.05;addy,2);
	};
	Def.SongBPMDisplay{
	File=THEME:GetPathF("", "Gameplay BPM");
	Name="BPMDisplay";
	InitCommand=cmd(x,320;y,94;diffusealpha,1);
	OnCommand=function(self) self:SetFromGameState() end;
	};
	LoadActor("HIBANA")..{
	};
	LoadActor(THEME:GetPathB("", "SONG_INFO/DIFFICULTY"))..{
	InitCommand=cmd(x,-3;y,-1);
	};
	LoadActor(THEME:GetPathB("", "SONG_INFO/STAGE"))..{
	InitCommand=cmd(x,3;y,-1);
	};
	LoadActor(THEME:GetPathB("", "SONG_INFO/MODE"))..{
	InitCommand=cmd(y,-80);
	};
	LoadActor("TIME_DISPLAY")..{
	InitCommand=cmd(x,320;y,18;);
	};
	---------------------------------------------------------------------	
	LoadFont("title")..{
		InitCommand=cmd(diffuse,color("#000000");x,320;y,260;horizalign,center;zoomy,1.6;shadowlength,0;maxwidth,290;sleep,.9;sleep,2.1;linear,0.2;diffusealpha,0);
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
		InitCommand=cmd(diffuse,color("#000000");x,320;y,210;horizalign,center;shadowlength,0;maxwidth,290;diffusealpha,0;sleep,.6;linear,.3;diffusealpha,1;sleep,2.1;linear,0.2;diffusealpha,0);
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
	LoadFont("art-nostroke 16px")..{
		InitCommand=cmd(diffuse,color("#000000");x,320;y,330;horizalign,center;zoom,0.7;shadowlength,0;maxwidth,310;diffusealpha,0;sleep,.6;linear,.3;diffusealpha,1;sleep,2.1;linear,0.2;diffusealpha,0),
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
};

return t;