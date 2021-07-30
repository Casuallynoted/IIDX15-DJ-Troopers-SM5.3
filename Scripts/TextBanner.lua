function TextBannerAfterSet(self,param) 
	local Title=self:GetChild("Title"); 
	local Subtitle=self:GetChild("Subtitle"); 
	local Artist=self:GetChild("Artist"); 
	
	
	if Subtitle:GetText() == "" then 
		(cmd(maxwidth,248;zoomx,.85;settext,Title:GetText()))(Title);
		else
		(cmd(maxwidth,248;zoomx,.85;settext,Title:GetText().." "..Subtitle:GetText()))(Title);
	end
	(cmd(visible,false))(Subtitle);
	(cmd(visible,false))(Artist);

	--self:stoptweening();
end