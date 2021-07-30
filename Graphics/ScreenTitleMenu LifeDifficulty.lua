local curGameName = GAMESTATE:GetCurrentGame():GetName();
return Def.ActorFrame {
	LoadFont("system") .. {
		InitCommand=cmd(zoom,1;horizalign,left);
		OnCommand=cmd(settext,"LIFE DIFFICULTY: " ..GetLifeDifficulty());
	};
	LoadFont("system") .. {
		InitCommand=cmd(zoom,1;horizalign,left;addy,24);
		BeginCommand=function(self)
			-- check network status
			if netConnected then
				self:diffuse( color("0.95,0.975,1,1") );
				self:diffusebottomedge( color("0.72,0.89,1,1") );
				self:settext("Network OK");
			else
				self:diffuse( color("0.75,0.75,0.75,1") );
				self:settext("Network OFF");
			end;
		end;
	};
		LoadFont("system") .. {
		InitCommand=cmd(zoom,1;horizalign,left;addy,12);
		OnCommand=cmd(settext,"GAMETYPE: " ..curGameName);
	};
};