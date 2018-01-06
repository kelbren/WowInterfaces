 if (GetLocale() == "zhCN") then BUNTIFRAME_GAMETOOLTIP_HEADER = "大脚头像"; BUNTIFRAME_GAMETOOLTIP_DESC = "◇左键点击选中目标。\n◇右键点击弹出菜单。\n◇Shift+左键可以移动头像。"; BUNITFRAME_MENU_THEME_TEXT = "风格"; BUNITFRAME_MENU_CLASSICAL_TEXT = "横排"; BUNITFRAME_MENU_VERTICAL_TEXT = "竖排"; BUNITFRAME_MENU_OPERATION_TEXT = "操作"; BUNITFRAME_MENU_RESET_POSITION_TEXT= "恢复原始位置"; elseif (GetLocale() == "zhTW") then BUNTIFRAME_GAMETOOLTIP_HEADER = "大腳頭像"; BUNTIFRAME_GAMETOOLTIP_DESC = "◇左鍵點擊選中目標。\n◇右鍵點擊彈出菜單。\n◇Shift+左鍵可以移動頭像。"; BUNITFRAME_MENU_THEME_TEXT = "風格"; BUNITFRAME_MENU_CLASSICAL_TEXT = "橫排"; BUNITFRAME_MENU_VERTICAL_TEXT = "豎排"; BUNITFRAME_MENU_OPERATION_TEXT = "操作"; BUNITFRAME_MENU_RESET_POSITION_TEXT= "恢復原始位置"; else BUNTIFRAME_GAMETOOLTIP_HEADER = "BUnitFrame"; BUNTIFRAME_GAMETOOLTIP_DESC = "Left click to target unit.\nRight click to show menu.\nShift+Click to move frame."; BUNITFRAME_MENU_THEME_TEXT = "Theme"; BUNITFRAME_MENU_CLASSICAL_TEXT = "Classical"; BUNITFRAME_MENU_VERTICAL_TEXT = "Vertical"; BUNITFRAME_MENU_OPERATION_TEXT = "Operation"; BUNITFRAME_MENU_RESET_POSITION_TEXT= "Reset position"; end BUnitFrame_Version = 2.7; BUF_9c065a6f473558b072497a5b55ae8c79 = nil; BUF_cea87f5c70ff4c4d30a53219b0d2aecf = 0.1; local BUF_5a463a8f26021da5b72a79300488a58e; BUF_c4d605743451f17ab862454a73a7dc7d = { [1] = { texture = "Interface\\Cooldown\\star4"; duration = 0.2, alphaStart = 0.5, alphaEnd = 1.0, scaleStart = 1, scaleEnd = 3, }, [2] = { texture = "Interface\\Cooldown\\star4"; duration = 1, alphaStart = 1.0, alphaEnd = 0.3, scaleStart = 3, scaleEnd = 0, } }; local BUnitFrame_ManaBarColor = {}; BUnitFrame_ManaBarColor[0] = { r = 0.00, g = 0.00, b = 1.00, prefix = MANA }; BUnitFrame_ManaBarColor[1] = { r = 1.00, g = 0.00, b = 0.00, prefix = RAGE }; BUnitFrame_ManaBarColor[2] = { r = 1.00, g = 0.50, b = 0.25, prefix = FOCUS }; BUnitFrame_ManaBarColor[3] = { r = 1.00, g = 1.00, b = 0.00, prefix = ENERGY }; BUnitFrame_ManaBarColor[4] = { r = 0.00, g = 1.00, b = 1.00, prefix = HAPPINESS }; BUnitFrame_ManaBarColor[5] = { r = 0.50, g = 0.50, b = 0.50, prefix = RUNES }; BUnitFrame_ManaBarColor[6] = { r = 0.00, g = 0.82, b = 1.00, prefix = RUNIC_POWER }; local BUEventor = BLibrary("BEvent"); local BUHooker = BLibrary("BHook"); BUEventor:Init{ name = "BUnitFrame", func = function() if (not BUnitFrame_Config or BUnitFrame_Config["version"] ~= BUnitFrame_Version) then BUnitFrame_Config = { ["version"] = BUnitFrame_Version, ["focus"] = { ["enabled"] = true, ["theme"] = "vertical", }, ["tt"] = { ["enabled"] = false, ["theme"] = "classical", }, ["ttt"] = { ["enabled"] = false, ["theme"] = "classical", }, ["casting_flash"] = true, ["casting_icon"] = true, } BUF_5a463a8f26021da5b72a79300488a58e = true; end end }; function BUnitFrame_SetPosition(BUF_411b8aa6d5954c6020f0b9c9e80e847a) BUF_411b8aa6d5954c6020f0b9c9e80e847a:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a:SetPoint(BUF_411b8aa6d5954c6020f0b9c9e80e847a.position[1], BUF_411b8aa6d5954c6020f0b9c9e80e847a.position[2], BUF_411b8aa6d5954c6020f0b9c9e80e847a.position[3], BUF_411b8aa6d5954c6020f0b9c9e80e847a.position[4], BUF_411b8aa6d5954c6020f0b9c9e80e847a.position[5]); end function BUnitFrame_UpdateOptions(BUF_411b8aa6d5954c6020f0b9c9e80e847a) if (BUF_9c065a6f473558b072497a5b55ae8c79 and BUnitFrame_Config["tt"]["enabled"]) then if (SHOW_TARGET_OF_TARGET == "1") then SetCVar("showTargetOfTarget", "0"); end if (not BUFTargetTargetFrame) then local BUF_73b215e0d0b817b4c834cad97b4a10b5 = BUnitFrame_Config["tt"]["theme"]; BUnitFrame_Create("BUFTargetTargetFrame", TargetFrame, "targettarget", BUF_73b215e0d0b817b4c834cad97b4a10b5); BUFTargetTargetFrame.config_branch = "tt"; BUFTargetTargetFrame.position = {"BOTTOMRIGHT", TargetFrame, "BOTTOMRIGHT", 0, -18}; BUnitFrame_SetPosition(BUFTargetTargetFrame); RegisterForSaveFrame(BUFTargetTargetFrame, "BUFTargetTargetFrame", BUF_5a463a8f26021da5b72a79300488a58e); end if (not BUFTargetTargetFrame.watched) then RegisterUnitWatch(BUFTargetTargetFrame, false); BUFTargetTargetFrame.watched = true; end else if (BUFTargetTargetFrame and BUFTargetTargetFrame.watched) then UnregisterUnitWatch(BUFTargetTargetFrame); BUFTargetTargetFrame.watched = false; BUFTargetTargetFrame:Hide(); end end if (BUF_9c065a6f473558b072497a5b55ae8c79 and BUnitFrame_Config["tt"]["enabled"] and BUnitFrame_Config["ttt"]["enabled"]) then if (not BUFTargetTargetTargetFrame) then local BUF_73b215e0d0b817b4c834cad97b4a10b5 = BUnitFrame_Config["ttt"]["theme"]; BUnitFrame_Create("BUFTargetTargetTargetFrame", BUFTargetTargetFrame, "targettargettarget", BUF_73b215e0d0b817b4c834cad97b4a10b5); BUFTargetTargetFrame.config_branch = "ttt"; BUFTargetTargetTargetFrame.position = {"TOPLEFT", BUFTargetTargetFrame, "BOTTOMLEFT", 15, 4}; BUnitFrame_SetPosition(BUFTargetTargetTargetFrame); RegisterForSaveFrame(BUFTargetTargetTargetFrame, "BUFTargetTargetTargetFrame", BUF_5a463a8f26021da5b72a79300488a58e); end if (not BUFTargetTargetTargetFrame.watched) then RegisterUnitWatch(BUFTargetTargetTargetFrame, false); BUFTargetTargetTargetFrame.watched = true; end else if (BUFTargetTargetTargetFrame and BUFTargetTargetTargetFrame.watched) then UnregisterUnitWatch(BUFTargetTargetTargetFrame); BUFTargetTargetTargetFrame.watched = false; BUFTargetTargetTargetFrame:Hide(); end end if (BUF_9c065a6f473558b072497a5b55ae8c79 and BUnitFrame_Config["focus"]["enabled"]) then if (not BUFFocusFrame) then local BUF_73b215e0d0b817b4c834cad97b4a10b5 = BUnitFrame_Config["focus"]["theme"]; local BUF_411b8aa6d5954c6020f0b9c9e80e847a = BUnitFrame_Create("BUFFocusFrame", PlayerFrame, "focus", BUF_73b215e0d0b817b4c834cad97b4a10b5); BUFFocusFrame.config_branch = "focus"; BUFFocusFrame.position = {"TOPRIGHT", PlayerFrame, "BOTTOMLEFT", 54, 80}; BUnitFrame_SetPosition(BUFFocusFrame); RegisterForSaveFrame(BUFFocusFrame, "BUFFocusFrame", BUF_5a463a8f26021da5b72a79300488a58e); if (not BUFFocusFrame.watched) then RegisterUnitWatch(BUFFocusFrame, false); BUFFocusFrame.watched = true; end else if (not BUFFocusFrame.watched) then RegisterUnitWatch(BUFFocusFrame, false); BUFFocusFrame.watched = true; end end else if (BUFFocusFrame and BUFFocusFrame.watched) then UnregisterUnitWatch(BUFFocusFrame); BUFFocusFrame.watched = false; BUFFocusFrame:Hide(); end end end function BUnitFrame_OnEnter(self) GameTooltip_AddNewbieTip(self, BUNTIFRAME_GAMETOOLTIP_HEADER, 1.0, 1.0, 1.0, BUNTIFRAME_GAMETOOLTIP_DESC); end function BUnitFrame_OnLeave(self) GameTooltip:Hide(); end function BUnitFrame_SetTheme(BUF_411b8aa6d5954c6020f0b9c9e80e847a, BUF_73b215e0d0b817b4c834cad97b4a10b5) if (not BUF_73b215e0d0b817b4c834cad97b4a10b5) then BUF_73b215e0d0b817b4c834cad97b4a10b5 = "classical"; end if (BUF_73b215e0d0b817b4c834cad97b4a10b5 == "classical") then BUF_411b8aa6d5954c6020f0b9c9e80e847a:SetWidth(93); BUF_411b8aa6d5954c6020f0b9c9e80e847a:SetHeight(45); BUF_411b8aa6d5954c6020f0b9c9e80e847a.background:SetWidth(46); BUF_411b8aa6d5954c6020f0b9c9e80e847a.background:SetHeight(15); BUF_411b8aa6d5954c6020f0b9c9e80e847a.background:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.background:SetPoint("BOTTOMLEFT", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "BOTTOMLEFT", 42, 13); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait.width = 35; BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait.height = 35; BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait:SetWidth(BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait.width); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait:SetHeight(BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait.height); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait:SetPoint("CENTER", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "TOPLEFT", 22.5, -22.5); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portraitBackground:SetWidth(36); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portraitBackground:SetHeight(36); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portraitBackground:SetTexCoord(0.046875, 0.3203125, 0.078125, 0.625); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portraitBackground:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portraitBackground:SetPoint("CENTER", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "TOPLEFT", 22.5, -22.5); BUF_411b8aa6d5954c6020f0b9c9e80e847a.spellTexture:SetWidth(30); BUF_411b8aa6d5954c6020f0b9c9e80e847a.spellTexture:SetHeight(30); BUF_411b8aa6d5954c6020f0b9c9e80e847a.spellTexture:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.spellTexture:SetPoint("CENTER", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "TOPLEFT", 22.5, -22.5); BUF_411b8aa6d5954c6020f0b9c9e80e847a.shine:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.shine:SetPoint("CENTER", BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait, "CENTER", 0, 0); BUF_411b8aa6d5954c6020f0b9c9e80e847a.artwork:SetAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.artwork:SetTexture("Interface\\AddOns\\BUnitFrame\\ClassicUnitFrame"); BUF_411b8aa6d5954c6020f0b9c9e80e847a.artwork:SetTexCoord(0.015625, 0.7265625, 0, 0.703125); BUF_411b8aa6d5954c6020f0b9c9e80e847a.raidIcon:SetWidth(15); BUF_411b8aa6d5954c6020f0b9c9e80e847a.raidIcon:SetHeight(15); BUF_411b8aa6d5954c6020f0b9c9e80e847a.raidIcon:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.raidIcon:SetPoint("CENTER", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "TOPLEFT", 22, -5); BUF_411b8aa6d5954c6020f0b9c9e80e847a.name:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.name:SetJustifyH("LEFT"); BUF_411b8aa6d5954c6020f0b9c9e80e847a.name:SetPoint("BOTTOMLEFT", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "BOTTOMLEFT", 45, 1); BUF_411b8aa6d5954c6020f0b9c9e80e847a.name:Show(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.deadText:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.deadText:SetPoint("CENTER", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "CENTER", 15, 1); BUF_411b8aa6d5954c6020f0b9c9e80e847a.deadText:Show(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.healthBar:SetWidth(46); BUF_411b8aa6d5954c6020f0b9c9e80e847a.healthBar:SetHeight(7); BUF_411b8aa6d5954c6020f0b9c9e80e847a.healthBar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar"); BUF_411b8aa6d5954c6020f0b9c9e80e847a.healthBar:SetOrientation("HORIZONTAL"); BUF_411b8aa6d5954c6020f0b9c9e80e847a.healthBar:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.healthBar:SetPoint("TOPRIGHT", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "TOPRIGHT", -2, -15); BUF_411b8aa6d5954c6020f0b9c9e80e847a.manaBar:SetWidth(46); BUF_411b8aa6d5954c6020f0b9c9e80e847a.manaBar:SetHeight(7); BUF_411b8aa6d5954c6020f0b9c9e80e847a.manaBar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar"); BUF_411b8aa6d5954c6020f0b9c9e80e847a.manaBar:SetOrientation("HORIZONTAL"); BUF_411b8aa6d5954c6020f0b9c9e80e847a.manaBar:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.manaBar:SetPoint("TOPRIGHT", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "TOPRIGHT", -2, -23); BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[1]:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[1]:SetPoint("LEFT", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "RIGHT", 4, 0); BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[2]:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[2]:SetPoint("LEFT", BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[1], "RIGHT", 0, 0); BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[3]:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[3]:SetPoint("LEFT", BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[2], "RIGHT", 0, 0); BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[4]:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[4]:SetPoint("LEFT", BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[3], "RIGHT", 0, 0); elseif (BUF_73b215e0d0b817b4c834cad97b4a10b5 == "vertical") then BUF_411b8aa6d5954c6020f0b9c9e80e847a:SetWidth(45); BUF_411b8aa6d5954c6020f0b9c9e80e847a:SetHeight(93); BUF_411b8aa6d5954c6020f0b9c9e80e847a.background:SetWidth(12); BUF_411b8aa6d5954c6020f0b9c9e80e847a.background:SetHeight(55); BUF_411b8aa6d5954c6020f0b9c9e80e847a.background:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.background:SetPoint("BOTTOMRIGHT", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "BOTTOMRIGHT", -15, 32); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait.width = 30; BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait.height = 30; BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait:SetWidth(BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait.width); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait:SetHeight(BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait.height); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait:SetPoint("CENTER", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "BOTTOMRIGHT", -18, 18); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portraitBackground:SetWidth(32); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portraitBackground:SetHeight(32); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portraitBackground:SetTexCoord(0.046875, 0.3203125, 0.078125, 0.625); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portraitBackground:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.portraitBackground:SetPoint("CENTER", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "BOTTOMRIGHT", -18, 18); BUF_411b8aa6d5954c6020f0b9c9e80e847a.spellTexture:SetWidth(22); BUF_411b8aa6d5954c6020f0b9c9e80e847a.spellTexture:SetHeight(22); BUF_411b8aa6d5954c6020f0b9c9e80e847a.spellTexture:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.spellTexture:SetPoint("CENTER", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "BOTTOMRIGHT", -18, 18); BUF_411b8aa6d5954c6020f0b9c9e80e847a.shine:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.shine:SetPoint("CENTER", BUF_411b8aa6d5954c6020f0b9c9e80e847a.portrait, "CENTER", 0, 0); BUF_411b8aa6d5954c6020f0b9c9e80e847a.artwork:SetAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.artwork:SetTexture("Interface\\AddOns\\BUnitFrame\\VerticalUnitFrame"); BUF_411b8aa6d5954c6020f0b9c9e80e847a.artwork:SetTexCoord(0.09375, 1, 0.0625, 1); BUF_411b8aa6d5954c6020f0b9c9e80e847a.raidIcon:SetWidth(12); BUF_411b8aa6d5954c6020f0b9c9e80e847a.raidIcon:SetHeight(12); BUF_411b8aa6d5954c6020f0b9c9e80e847a.raidIcon:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.raidIcon:SetPoint("CENTER", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "BOTTOMRIGHT", -18, 5); BUF_411b8aa6d5954c6020f0b9c9e80e847a.name:Hide(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.deadText:Hide(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.healthBar:SetWidth(7); BUF_411b8aa6d5954c6020f0b9c9e80e847a.healthBar:SetHeight(50); BUF_411b8aa6d5954c6020f0b9c9e80e847a.healthBar:SetStatusBarTexture("Interface\\AddOns\\BUnitFrame\\VerticalStatusBar"); BUF_411b8aa6d5954c6020f0b9c9e80e847a.healthBar:SetOrientation("VERTICAL"); BUF_411b8aa6d5954c6020f0b9c9e80e847a.healthBar:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.healthBar:SetPoint("TOPLEFT", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "TOPLEFT", 15, -6); BUF_411b8aa6d5954c6020f0b9c9e80e847a.manaBar:SetWidth(4); BUF_411b8aa6d5954c6020f0b9c9e80e847a.manaBar:SetHeight(50); BUF_411b8aa6d5954c6020f0b9c9e80e847a.manaBar:SetStatusBarTexture("Interface\\AddOns\\BUnitFrame\\VerticalStatusBar"); BUF_411b8aa6d5954c6020f0b9c9e80e847a.manaBar:SetOrientation("VERTICAL"); BUF_411b8aa6d5954c6020f0b9c9e80e847a.manaBar:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.manaBar:SetPoint("TOPLEFT", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "TOPLEFT", 25, -6); BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[1]:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[1]:SetPoint("TOP", BUF_411b8aa6d5954c6020f0b9c9e80e847a, "BOTTOM", 0, -2); BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[2]:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[2]:SetPoint("TOP", BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[1], "BOTTOM", 0, 0); BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[3]:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[3]:SetPoint("TOP", BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[2], "BOTTOM", 0, 0); BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[4]:ClearAllPoints(); BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[4]:SetPoint("TOP", BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[3], "BOTTOM", 0, 0); end BUF_411b8aa6d5954c6020f0b9c9e80e847a.theme = BUF_73b215e0d0b817b4c834cad97b4a10b5; end function BUnitFrame_Create(name, parent, unit, theme) if (not parent) then parent = UIParent; end local BUF_411b8aa6d5954c6020f0b9c9e80e847a = CreateFrame("Button", name, parent, "BUnitFrameTemplate"); if (BUF_411b8aa6d5954c6020f0b9c9e80e847a) then BUF_411b8aa6d5954c6020f0b9c9e80e847a.unit = unit; BUnitFrame_Update(BUF_411b8aa6d5954c6020f0b9c9e80e847a); BUF_411b8aa6d5954c6020f0b9c9e80e847a:SetAttribute("unit", unit); BUF_411b8aa6d5954c6020f0b9c9e80e847a:SetAttribute("target", unit); BUF_411b8aa6d5954c6020f0b9c9e80e847a:SetAttribute("*type1", "target"); BUF_411b8aa6d5954c6020f0b9c9e80e847a:SetPoint("CENTER", UIParent, "CENTER", 0, 0); RegisterUnitWatch(BUF_411b8aa6d5954c6020f0b9c9e80e847a, false); BUF_411b8aa6d5954c6020f0b9c9e80e847a.watched = true; BUnitFrame_SetTheme(BUF_411b8aa6d5954c6020f0b9c9e80e847a, theme); return BUF_411b8aa6d5954c6020f0b9c9e80e847a; end end function BUnitFrame_OnMouseDown(self, button) if (IsShiftKeyDown()) then self:StartMoving(); end end function BUnitFrame_OnMouseUp(self, button) self:StopMovingOrSizing(); end function BUnitFrame_Update(frame, part) if (not frame.unit) then return; end if (not part) then part = {}; part["all"] = true; end if (type(part) == "string") then local tmp = part; part = {}; part[tmp] = true; end if (part["portrait"] or part["all"]) then SetPortraitTexture(frame.portrait, frame.unit); end if (part["flag"] or part["all"]) then local index = GetRaidTargetIndex(frame.unit); if ( index ) then SetRaidTargetIconTexture(frame.raidIcon, index); frame.raidIcon:Show(); else frame.raidIcon:Hide(); end end if (part["name"] or part["all"]) then local BUF_8983c60d66c8593ec7165ea9dbedb584 = UnitName(frame.unit); if (BUF_8983c60d66c8593ec7165ea9dbedb584) then frame.name:SetText(BUF_8983c60d66c8593ec7165ea9dbedb584); else frame.name:SetText(""); end end if (part["health"] or part["all"]) then local BUF_5481613f185226602b03c7f2918bd7ff = UnitHealthMax(frame.unit); local BUF_db2e34bc03f375a2abda68fc28730133 = UnitHealth(frame.unit); frame.healthBar:SetMinMaxValues(0, BUF_5481613f185226602b03c7f2918bd7ff); frame.healthBar:SetValue(BUF_db2e34bc03f375a2abda68fc28730133); if (BUF_3b16abe7546139ccb8b198d9c26a8dfa == 0) then frame.deadText:Show(); else frame.deadText:Hide(); end end if (not frame.casting) then if (part["power"] or part["all"]) then local BUF_49cba2a5171aa8ae987d9f21b1c14d8b = UnitManaMax(frame.unit); local BUF_ea4eac480c6a6767e84c51b6864de476 = UnitMana(frame.unit); frame.manaBar:SetMinMaxValues(0, BUF_49cba2a5171aa8ae987d9f21b1c14d8b); frame.manaBar:SetValue(BUF_ea4eac480c6a6767e84c51b6864de476); end if (part["powertype"] or part["all"]) then local BUF_208d4d4e303d73302bb6d6f063253f7e, BUF_afccb17e7af860b0565c49c3115e471f = UnitPowerType(frame.unit); local BUF_a44ecbf575d7f2eca081a0592e8d84fa = BUnitFrame_ManaBarColor[BUF_208d4d4e303d73302bb6d6f063253f7e]; frame.manaBar:SetStatusBarColor(BUF_a44ecbf575d7f2eca081a0592e8d84fa.r, BUF_a44ecbf575d7f2eca081a0592e8d84fa.g, BUF_a44ecbf575d7f2eca081a0592e8d84fa.b); end end end function BUnitFrame_OnLoad(self) self:RegisterEvent("PLAYER_TARGET_CHANGED"); self:RegisterEvent("PLAYER_FOCUS_CHANGED"); self:RegisterEvent("UNIT_NAME_UPDATE"); self:RegisterEvent("UNIT_PORTRAIT_UPDATE"); self:RegisterEvent("UNIT_DISPLAYPOWER"); self:RegisterEvent("UNIT_HEALTH"); self:RegisterEvent("UNIT_MAXHEALTH"); self:RegisterEvent("UNIT_MANA"); self:RegisterEvent("UNIT_RAGE"); self:RegisterEvent("UNIT_FOCUS"); self:RegisterEvent("UNIT_ENERGY"); self:RegisterEvent("UNIT_MAXMANA"); self:RegisterEvent("UNIT_MAXRAGE"); self:RegisterEvent("UNIT_MAXFOCUS"); self:RegisterEvent("UNIT_MAXENERGY"); self:RegisterEvent("UNIT_AURA"); self:RegisterEvent("RAID_TARGET_UPDATE"); self:RegisterEvent("UNIT_SPELLCAST_START"); self:RegisterEvent("UNIT_SPELLCAST_CHANNEL_START"); self:RegisterEvent("UNIT_SPELLCAST_FAILED"); self:RegisterEvent("UNIT_SPELLCAST_INTERRUPTED"); self:RegisterEvent("UNIT_SPELLCAST_STOP"); self:RegisterEvent("UNIT_SPELLCAST_CHANNEL_STOP"); self:RegisterEvent("UNIT_SPELLCAST_CHANNEL_UPDATE"); self:RegisterEvent("UNIT_SPELLCAST_DELAYED"); self.healthBar = getglobal(self:GetName().."HealthBar"); self.manaBar = getglobal(self:GetName().."ManaBar"); self.portrait = getglobal(self:GetName().."Portrait"); self.portraitBackground = getglobal(self:GetName().."PortraitBackground"); self.spellTexture = getglobal(self:GetName().."SpellTexture"); self.background = getglobal(self:GetName().."Background"); self.textureFrame = getglobal(self:GetName().."TextureFrame"); self.artwork = getglobal(self:GetName().."TextureFrameTexture"); self.raidIcon = getglobal(self:GetName().."TextureFrameRaidTargetIcon"); self.name = getglobal(self:GetName().."TextureFrameName"); self.deadText = getglobal(self:GetName().."TextureFrameDeadText"); self.shine = getglobal(self:GetName().."ShineFrame"); self.shineTexture = getglobal(self:GetName().."ShineFrameTexture"); self.debuff = {}; self.debuff[1] = getglobal(self:GetName().."Debuff1"); self.debuff[2] = getglobal(self:GetName().."Debuff2"); self.debuff[3] = getglobal(self:GetName().."Debuff3"); self.debuff[4] = getglobal(self:GetName().."Debuff4"); self.spellTexture:Hide(); self:RegisterForClicks("LeftButtonUp", "RightButtonUp"); end function BUnitFrame_OnShow(self) BUnitFrame_Update(self); BUnitFrame_UpdateDebuff(self); end function BUnitFrame_OnHide(self) end function BUnitFrame_BeginShine(self) self.shine.stage = 1; self.shine.elapsed = 0; self.shine.shining = true; self.shine:Show(); end function BUnitFrame_OnEvent(self, event, ...) if (not self.watched) then return; end local BUF_fd724fd3c5e25aaf3b4226e1dae5257c = ...; if (string.sub(event, 1, 4) == "UNIT" and not UnitIsUnit(BUF_fd724fd3c5e25aaf3b4226e1dae5257c, self.unit)) then return; end if (event == "PLAYER_TARGET_CHANGED" and string.sub(self.unit, 1, 6) == "target") then BUnitFrame_Update(self); elseif (event == "PLAYER_FOCUS_CHANGED" and string.sub(self.unit, 1, 5) == "focus") then BUnitFrame_Update(self); elseif (event == "RAID_TARGET_UPDATE") then BUnitFrame_Update(self, "flag"); elseif (event == "UNIT_HEALTH" or event == "UNIT_MAXHEALTH") then BUnitFrame_Update(self, "health"); elseif (event == "UNIT_MANA" or event == "UNIT_RAGE" or event == "UNIT_FOCUS" or event == "UNIT_ENERGY" or event == "UNIT_MAXMANA" or event == "UNIT_MAXRAGE" or event == "UNIT_MAXFOCUS" or event == "UNIT_MAXENERGY") then BUnitFrame_Update(self, "power"); elseif (event == "UNIT_NAME_UPDATE") then BUnitFrame_Update(self, "name"); elseif (event == "UNIT_PORTRAIT_UPDATE") then BUnitFrame_Update(self, "portrait"); elseif (event == "UNIT_DISPLAYPOWER") then BUnitFrame_Update(self, "powertype"); elseif (event == "UNIT_SPELLCAST_START" or event == "UNIT_SPELLCAST_CHANNEL_START") then local name, nameSubtext, text, texture, startTime, endTime, isTradeSkill; if (event == "UNIT_SPELLCAST_START") then name, nameSubtext, text, texture, startTime, endTime, isTradeSkill = UnitCastingInfo(self.unit); self.channeling = nil; else name, nameSubtext, text, texture, startTime, endTime, isTradeSkil = UnitChannelInfo(self.unit); self.channeling = true; end self.startTime = startTime; self.endTime = endTime; if (BUnitFrame_Config["casting_icon"]) then self.portrait:Hide(); self.spellTexture:SetTexture(texture); self.spellTexture:SetTexCoord(0.2, 0.8, 0.2, 0.8); self.spellTexture:Show(); end self.manaBar:SetMinMaxValues(0, 100); self.manaBar:SetStatusBarColor(1.0, 1.0, 1.0); if (BUnitFrame_Config["casting_flash"]) then BUnitFrame_BeginShine(self); end self.casting = true; elseif ((event == "UNIT_SPELLCAST_CHANNEL_UPDATE" or event == "UNIT_SPELLCAST_DELAYED") and UnitIsUnit(BUF_fd724fd3c5e25aaf3b4226e1dae5257c, self.unit)) then if (self.casting) then local name, nameSubtext, text, texture, startTime, endTime, isTradeSkill; if (event == "UNIT_SPELLCAST_CHANNEL_UPDATE") then name, nameSubtext, text, texture, startTime, endTime, isTradeSkill = UnitChannelInfo(self.unit); else name, nameSubtext, text, texture, startTime, endTime, isTradeSkill = UnitCastingInfo(self.unit); end self.startTime = startTime; self.endTime = endTime; end elseif ((event == "UNIT_SPELLCAST_FAILED" or event == "UNIT_SPELLCAST_INTERRUPTED" or event == "UNIT_SPELLCAST_STOP" or event == "UNIT_SPELLCAST_CHANNEL_STOP") and UnitIsUnit(BUF_fd724fd3c5e25aaf3b4226e1dae5257c, self.unit)) then local BUF_ea4eac480c6a6767e84c51b6864de476 = UnitMana(self.unit); local BUF_b00b0341adf15fef7dcc34d588146853 = UnitManaMax(self.unit); local BUF_6d5e7d83d8358745ae4dcf61d16bd1f3 = UnitPowerType(self.unit); local BUF_a44ecbf575d7f2eca081a0592e8d84fa = BUnitFrame_ManaBarColor[BUF_6d5e7d83d8358745ae4dcf61d16bd1f3]; self.manaBar:SetMinMaxValues(0, BUF_b00b0341adf15fef7dcc34d588146853); self.manaBar:SetStatusBarColor(BUF_a44ecbf575d7f2eca081a0592e8d84fa.r, BUF_a44ecbf575d7f2eca081a0592e8d84fa.g, BUF_a44ecbf575d7f2eca081a0592e8d84fa.b); self.manaBar:SetValue(BUF_ea4eac480c6a6767e84c51b6864de476); self.portrait:Show(); self.spellTexture:Hide(); self.casting = nil; elseif (event == "UNIT_AURA") then if (self.unit and UnitIsUnit(BUF_fd724fd3c5e25aaf3b4226e1dae5257c, self.unit)) then BUnitFrame_UpdateDebuff(self); end end end function BUnitFrame_UpdateDebuff(BUF_411b8aa6d5954c6020f0b9c9e80e847a) local debuffType, color; local debuffCount; local numDebuffs = 0; local largeDebuffList = {}; local name, rank, icon, count, debuffType, duration, timeLeft; for BUF_e914904fab9d05d3f54d52bfc31a0f3f = 1, 4, 1 do local debuffBorder = getglobal(BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[BUF_e914904fab9d05d3f54d52bfc31a0f3f]:GetName().."Border"); local debuffIcon = getglobal(BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[BUF_e914904fab9d05d3f54d52bfc31a0f3f]:GetName().."Icon"); local debuffCount = getglobal(BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[BUF_e914904fab9d05d3f54d52bfc31a0f3f]:GetName().."Count"); local debuffCooldown = getglobal(BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[BUF_e914904fab9d05d3f54d52bfc31a0f3f]:GetName().."Cooldown"); name, rank, icon, count, debuffType, duration, timeLeft = UnitDebuff(BUF_411b8aa6d5954c6020f0b9c9e80e847a.unit, BUF_e914904fab9d05d3f54d52bfc31a0f3f); button = BUF_411b8aa6d5954c6020f0b9c9e80e847a.debuff[BUF_e914904fab9d05d3f54d52bfc31a0f3f]; if ( icon ) then debuffIcon:SetTexture(icon); if ( debuffType ) then color = DebuffTypeColor[debuffType]; else color = DebuffTypeColor["none"]; end if ( count > 1 ) then debuffCount:SetText(count); debuffCount:Show(); else debuffCount:Hide(); end if ( duration ) then if ( duration > 0 ) then debuffCooldown:Show(); startCooldownTime = GetTime()-(duration-timeLeft); CooldownFrame_SetTimer(debuffCooldown, startCooldownTime, duration, 1); else debuffCooldown:Hide(); end else debuffCooldown:Hide(); end debuffBorder:SetVertexColor(color.r, color.g, color.b); button:Show(); else button:Hide(); end end end function BUnitFrame_OnUpdate(self, elapsed) if (not self.last) then self.last = 0; end self.last = self.last + elapsed; if (self.last > BUF_cea87f5c70ff4c4d30a53219b0d2aecf) then self.last = 0; BUnitFrame_Update(self); BUnitFrame_UpdateDebuff(self); end if (self.casting) then local BUF_da4b94f92d67ca9ccecb24bec1db6e2b = GetTime() * 1000; local BUF_80b122b2b55d9fee0b4effccf185d249 = (BUF_da4b94f92d67ca9ccecb24bec1db6e2b - self.startTime)*100/(self.endTime - self.startTime); if (BUF_80b122b2b55d9fee0b4effccf185d249 > 100) then local BUF_ea4eac480c6a6767e84c51b6864de476 = UnitMana(self.unit); local BUF_b00b0341adf15fef7dcc34d588146853 = UnitManaMax(self.unit); local BUF_6d5e7d83d8358745ae4dcf61d16bd1f3 = UnitPowerType(self.unit); local BUF_a44ecbf575d7f2eca081a0592e8d84fa = BUnitFrame_ManaBarColor[BUF_6d5e7d83d8358745ae4dcf61d16bd1f3]; self.manaBar:SetMinMaxValues(0, BUF_b00b0341adf15fef7dcc34d588146853); self.manaBar:SetStatusBarColor(BUF_a44ecbf575d7f2eca081a0592e8d84fa.r, BUF_a44ecbf575d7f2eca081a0592e8d84fa.g, BUF_a44ecbf575d7f2eca081a0592e8d84fa.b); self.manaBar:SetValue(BUF_ea4eac480c6a6767e84c51b6864de476); if (BUnitFrame_Config["casting_icon"]) then self.portrait:Show(); self.spellTexture:Hide(); end self.casting = nil; else self.manaBar:SetValue(BUF_80b122b2b55d9fee0b4effccf185d249); end end if (BUnitFrame_Config["casting_flash"]) then if (self.shine.shining) then self.shine.elapsed = self.shine.elapsed + elapsed; if (self.shine.elapsed > BUF_c4d605743451f17ab862454a73a7dc7d[self.shine.stage].duration) then self.shine.elapsed = 0; self.shine.stage = self.shine.stage + 1; if (not BUF_c4d605743451f17ab862454a73a7dc7d[self.shine.stage]) then self.shine.shining = nil; self.shine:Hide(); return; end end local BUF_bf61cd56adaeb71abb1cdca2566cb62f = (BUF_c4d605743451f17ab862454a73a7dc7d[self.shine.stage].alphaEnd - BUF_c4d605743451f17ab862454a73a7dc7d[self.shine.stage].alphaStart) * self.shine.elapsed /BUF_c4d605743451f17ab862454a73a7dc7d[self.shine.stage].duration + BUF_c4d605743451f17ab862454a73a7dc7d[self.shine.stage].alphaStart; local BUF_6230e23f021dec637edabaa368556c06 = (BUF_c4d605743451f17ab862454a73a7dc7d[self.shine.stage].scaleEnd - BUF_c4d605743451f17ab862454a73a7dc7d[self.shine.stage].scaleStart) * self.shine.elapsed / BUF_c4d605743451f17ab862454a73a7dc7d[self.shine.stage].duration + BUF_c4d605743451f17ab862454a73a7dc7d[self.shine.stage].scaleStart; self.shine:SetAlpha(BUF_bf61cd56adaeb71abb1cdca2566cb62f); self.shineTexture:SetWidth(self.shine:GetWidth() * BUF_6230e23f021dec637edabaa368556c06); self.shineTexture:SetHeight(self.shine:GetHeight() * BUF_6230e23f021dec637edabaa368556c06); self.shine:Show(); else self.shine:Hide(); end else self.shine:Hide(); end end function BUnitFrame_OnContextMenu(self) PlaySound("UChatScrollButton"); BUnitFrameDropDown.relative_frame = self; BToggleDropDownMenu(1, nil, BUnitFrameDropDown, self:GetName(), 0, 0); end function BUnitFrameDropDown_OnLoad(self) BDropDownMenu_Initialize(self, BUnitFrameDropDown_Initialize, "MENU"); BDropDownMenu_SetWidth(self, 170); end function BUF_e548892cab98072523cc55f9f5f7c77f() local BUF_411b8aa6d5954c6020f0b9c9e80e847a = BUnitFrameDropDown.relative_frame; BUnitFrame_SetTheme(BUF_411b8aa6d5954c6020f0b9c9e80e847a, "classical"); BUnitFrame_Config[BUF_411b8aa6d5954c6020f0b9c9e80e847a.config_branch]["theme"] = "classical"; end function BUF_a5eaae611da8dae2b2027a7f2d140787() local BUF_411b8aa6d5954c6020f0b9c9e80e847a = BUnitFrameDropDown.relative_frame; BUnitFrame_SetTheme(BUF_411b8aa6d5954c6020f0b9c9e80e847a, "vertical"); BUnitFrame_Config[BUF_411b8aa6d5954c6020f0b9c9e80e847a.config_branch]["theme"] = "vertical"; end function BUF_9807851890e6237b4b0af38e4330a48f() local BUF_411b8aa6d5954c6020f0b9c9e80e847a = BUnitFrameDropDown.relative_frame; BUnitFrame_SetPosition(BUF_411b8aa6d5954c6020f0b9c9e80e847a); BUF_411b8aa6d5954c6020f0b9c9e80e847a:StopMovingOrSizing(); end function BUnitFrameDropDown_Initialize() local BUF_a44ecbf575d7f2eca081a0592e8d84fa; local BUF_411b8aa6d5954c6020f0b9c9e80e847a = BUnitFrameDropDown.relative_frame; BUF_a44ecbf575d7f2eca081a0592e8d84fa = {}; BUF_a44ecbf575d7f2eca081a0592e8d84fa.text = BUNITFRAME_MENU_THEME_TEXT; BUF_a44ecbf575d7f2eca081a0592e8d84fa.notClickable = 1; BUF_a44ecbf575d7f2eca081a0592e8d84fa.isTitle = 1; BUF_a44ecbf575d7f2eca081a0592e8d84fa.notCheckable = 1; BDropDownMenu_AddButton(BUF_a44ecbf575d7f2eca081a0592e8d84fa); BUF_a44ecbf575d7f2eca081a0592e8d84fa = {}; BUF_a44ecbf575d7f2eca081a0592e8d84fa.text = BUNITFRAME_MENU_CLASSICAL_TEXT; if (BUF_411b8aa6d5954c6020f0b9c9e80e847a and BUF_411b8aa6d5954c6020f0b9c9e80e847a.theme == "classical") then BUF_a44ecbf575d7f2eca081a0592e8d84fa.checked = true; end; BUF_a44ecbf575d7f2eca081a0592e8d84fa.func = BUF_e548892cab98072523cc55f9f5f7c77f; BDropDownMenu_AddButton(BUF_a44ecbf575d7f2eca081a0592e8d84fa); BUF_a44ecbf575d7f2eca081a0592e8d84fa = {}; BUF_a44ecbf575d7f2eca081a0592e8d84fa.text = BUNITFRAME_MENU_VERTICAL_TEXT; if (BUF_411b8aa6d5954c6020f0b9c9e80e847a and BUF_411b8aa6d5954c6020f0b9c9e80e847a.theme == "vertical") then BUF_a44ecbf575d7f2eca081a0592e8d84fa.checked = true; end; BUF_a44ecbf575d7f2eca081a0592e8d84fa.func = BUF_a5eaae611da8dae2b2027a7f2d140787; BDropDownMenu_AddButton(BUF_a44ecbf575d7f2eca081a0592e8d84fa); BUF_a44ecbf575d7f2eca081a0592e8d84fa = {}; BUF_a44ecbf575d7f2eca081a0592e8d84fa.text = BUNITFRAME_MENU_OPERATION_TEXT; BUF_a44ecbf575d7f2eca081a0592e8d84fa.notClickable = 1; BUF_a44ecbf575d7f2eca081a0592e8d84fa.isTitle = 1; BUF_a44ecbf575d7f2eca081a0592e8d84fa.notCheckable = 1; BDropDownMenu_AddButton(BUF_a44ecbf575d7f2eca081a0592e8d84fa); BUF_a44ecbf575d7f2eca081a0592e8d84fa = {}; BUF_a44ecbf575d7f2eca081a0592e8d84fa.text = BUNITFRAME_MENU_RESET_POSITION_TEXT; BUF_a44ecbf575d7f2eca081a0592e8d84fa.func = BUF_9807851890e6237b4b0af38e4330a48f; BDropDownMenu_AddButton(BUF_a44ecbf575d7f2eca081a0592e8d84fa); end function BUnitFrame_CastingShining_Toggle(BUF_43975aa4b29e368c1d658b08e332e857) if (BUF_43975aa4b29e368c1d658b08e332e857) then BUnitFrame_Config["casting_flash"] = true; else BUnitFrame_Config["casting_flash"] = false; end end function BUnitFrame_CastingIcon_Toggle(BUF_43975aa4b29e368c1d658b08e332e857) if (BUF_43975aa4b29e368c1d658b08e332e857) then BUnitFrame_Config["casting_icon"] = true; else BUnitFrame_Config["casting_icon"] = false; end end function BUnitFrame_TargetTargetTargetFrame_Toggle(BUF_43975aa4b29e368c1d658b08e332e857) if (BUF_43975aa4b29e368c1d658b08e332e857) then BUnitFrame_Config["ttt"]["enabled"] = true; else BUnitFrame_Config["ttt"]["enabled"] = false; end BUnitFrame_UpdateOptions(); end function BUnitFrame_FocusFrame_Toggle(BUF_43975aa4b29e368c1d658b08e332e857) if (BUF_43975aa4b29e368c1d658b08e332e857) then BUnitFrame_Config["focus"]["enabled"] = true; else BUnitFrame_Config["focus"]["enabled"] = false; end BUnitFrame_UpdateOptions(); end function BUnitFrame_TargetTargetFrame_Toggle(BUF_43975aa4b29e368c1d658b08e332e857) if (BUF_43975aa4b29e368c1d658b08e332e857) then BUnitFrame_Config["tt"]["enabled"] = true; else BUnitFrame_Config["tt"]["enabled"] = false; end BUnitFrame_UpdateOptions(); end function BUnitFrame_Toggle(BUF_43975aa4b29e368c1d658b08e332e857) if (BUF_43975aa4b29e368c1d658b08e332e857) then BUF_9c065a6f473558b072497a5b55ae8c79 = true; else BUF_9c065a6f473558b072497a5b55ae8c79 = false; end BUnitFrame_UpdateOptions(); end 