local t = Def.ActorFrame{
	LoadActor("menuitem frame")..{
	};
	Def.Sprite{
		InitCommand=cmd(cropbottom,.26;x,-121;y,7;zoom,.88);
		BeginCommand=function(self)
			self:Load(THEME:GetPathB("ScreenCustomize","overlay/"..GetUserPref("IIDX15Frame")));
		end;
		IIDX15FrameChangedMessageCommand=function(self,param)
			self:Load(THEME:GetPathB("ScreenCustomize","overlay/"..param.NewIIDX15Frame));
		end;
	};
};

return t;