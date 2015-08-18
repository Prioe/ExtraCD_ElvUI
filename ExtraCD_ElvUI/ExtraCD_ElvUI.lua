local E = ElvUI[1]
local tex = {}

local function SkinIcon(_, order, bar)
	local f = bar.btns[order]
	if not tex[order] then
		tex[order] = f:CreateTexture()
		tex[order]:SetTexture(bar.active[order].icon)
		tex[order]:SetTexCoord(unpack(E.TexCoords))
	end 
	tex[order]:ClearAllPoints()
	tex[order]:SetAllPoints(f)
	f:CreateBackdrop()
end

hooksecurefunc(ExtraCD, "CreateIcon", SkinIcon)