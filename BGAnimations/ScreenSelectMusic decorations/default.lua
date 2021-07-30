local t = LoadFallbackB();

t[#t+1] = StandardDecorationFromFileOptional("BannerFrame","banner frame");
t[#t+1] = StandardDecorationFromFileOptional("BPMDisplay","BPMDisplay");
t[#t+1] = StandardDecorationFromFileOptional("TotalTime","TotalTime");
t[#t+1] = StandardDecorationFromFileOptional("DifficultyList","DifficultyList");
t[#t+1] = StandardDecorationFromFile("OptionsListFrame", "optionslist frame");
t[#t+1] = StandardDecorationFromFileOptional("CourseContentsList","CourseContentsList");
--[[
t[#t+1] = StandardDecorationFromFileOptional("StepsDisplayP1","StepsDisplayP1");
t[#t+1] = StandardDecorationFromFileOptional("StepsDisplayP2","StepsDisplayP2");
t[#t+1] = StandardDecorationFromFileOptional("SongData","SongData");
]]
t[#t+1] = StandardDecorationFromFileOptional("CourseContents","CourseContents");
t[#t+1] = LoadActor(THEME:GetPathG("","_press 5x2.png"))..{
	Frames = Sprite.LinearFrames(10,.3);
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoom,1;visible,false;draworder,100);
	SongChosenMessageCommand=cmd(setstate,0;visible,true);
	TwoPartConfirmCanceledMessageCommand=cmd(visible,false);
	SongUnchosenMessageCommand=cmd(visible,false);
};

for pn in ivalues(PlayerNumber) do
	local MetricsName = "DifficultyIcon"..PlayerNumberToString(pn);
	t[#t+1] = StandardDecorationFromFile(MetricsName,MetricsName);
end;

return t
