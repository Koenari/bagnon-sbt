--[[ ##### INTERFACE OPTIONS START ##### ]]--

function SBt_InterfaceOptions_Okay(self) -- *
end

function SBt_InterfaceOptions_Cancel(self) -- *
end

function SBt_InterfaceOptions_OnShow(self)

    SBt_ConfigTitle = self:CreateFontString("SBt_ConfigTitle", "ARTWORK", "GameFontNormalLarge")
    SBt_ConfigTitle:SetPoint("TOPLEFT", 16, -16)
    SBt_ConfigTitle:SetText("Soulbound Trash Option")

    SBt_ConfigSubtitle = self:CreateFontString("SBt_ConfigSubtitle", "ARTWORK", "GameFontHighlightSmall")
    SBt_ConfigSubtitle:SetHeight(22) -- Hight from top to put the checkbox in filters
    SBt_ConfigSubtitle:SetPoint("TOPLEFT", SBt_ConfigTitle, "BOTTOMLEFT", 0, -8)
    SBt_ConfigSubtitle:SetPoint("RIGHT", self, -32, 0)
    SBt_ConfigSubtitle:SetNonSpaceWrap(true)
    SBt_ConfigSubtitle:SetJustifyH("LEFT")
    SBt_ConfigSubtitle:SetJustifyV("TOP")
    SBt_ConfigSubtitle:SetText("This allows you to change what gets marked as Soulbound Trash to sell")

    --Ilvl Filter
    SBt_ListFiltersTitle = self:CreateFontString("SBt_ListFiltersTitle", "ARTWORK", "GameFontNormal")
    SBt_ListFiltersTitle:SetPoint("TOPLEFT", SBt_ConfigSubtitle, "BOTTOMLEFT", 4, -10)
    SBt_ListFiltersTitle:SetText("Item Levels")

    SBt_MinILvl = self:CreateSlider('SBt_MinILvl')
	SBt_MinILvl:SetPoint('TOPLEFT', SBt_ListFiltersTitle, 'BOTTOMLEFT', 4, -14)
	SBt_MinILvl:SetRange(1, 500)
	SBt_MinILvl:SetStep(10) -- Defaults to 1
	SBt_MinILvl:SetText('Minimum ILvl')
--	SBt_MinILvl:SetNewFeature(true)
--	Slider:On('Update', function(self, event, ...)
--		print('Slider received "' .. event .. '" event, arguments:', ...)

    SBt_MaxILvl = self:CreateSlider('SBt_MaxILvl')
	SBt_MaxILvl:SetPoint('TOPLEFT', SBt_MinILvl, 'BOTTOMLEFT', 4, -14)
	SBt_MaxILvl:SetRange(1, 500)
	SBt_MaxILvl:SetStep(10) -- Defaults to 1
	SBt_MaxILvl:SetText('Maximum ILvl')
--	SBt_MaxILvl:SetNewFeature(true)
--	Slider:On('Update', function(self, event, ...)
--		print('Slider received "' .. event .. '" event, arguments:', ...)


    self:SetScript("OnShow", SBt_ConfigRefresh)
    SBt_ConfigRefresh(self)

end

function SBt_ConfigRefresh(self)
	if not (self:IsVisible()) then return end
	--[[ Set control values here ]]--
end

function SBt_InterfaceOptions_OnLoad(self)

	self.name = "SoulBound Trash"
	self.okay = function(self) SBt_InterfaceOptions_Okay(self) end
	self.cancel = function(self) SBt_InterfaceOptions_Cancel(self) end
	InterfaceOptions_AddCategory(self)

end

--[[ ##### INTERFACE OPTIONS END ##### ]]--

