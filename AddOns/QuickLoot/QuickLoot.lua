 if (GetLocale() == "zhCN") then QUICK_LOOT_ENABLE = "允许快速拾取物品"; QUICK_LOOT_AUTOHIDE = "当没有物品时自动隐藏面板" MOD_QUICK_LOOT_TITLE = {"快速拾取", "kuaisushiqu"}; elseif (GetLocale() == "zhTW") then QUICK_LOOT_ENABLE = "允許快速拾取物品"; QUICK_LOOT_AUTOHIDE = "當沒有物品時自動隱藏面板" MOD_QUICK_LOOT_TITLE = {"快速拾取", "kuaisushiqu"}; else QUICK_LOOT_ENABLE = "Enable Quick Loot"; QUICK_LOOT_AUTOHIDE = "Auto hide if there's nothing inside" MOD_QUICK_LOOT_TITLE = "Quick Loot"; end QuickLoot_b79f58e97448ef92532ff7249b75473f = nil; QuickLoot_2b2c58e7d34a6c653e8604d78f176c4a = nil; QuickLoot_eef948850914dc4b14c548b772f90ca8 = nil; local isHooked = false; function QuickLoot_c2154f84867020d1494bd20708a67f04() local __index; local QuickLoot_b254e387cf58e982ba24fcb3e8a63995, QuickLoot_a0f453fd098c0b0fda780f69cda6ffbf = GetCursorPosition(); local QuickLoot_6230e23f021dec637edabaa368556c06 = UIParent:GetScale(); QuickLoot_b254e387cf58e982ba24fcb3e8a63995 = QuickLoot_b254e387cf58e982ba24fcb3e8a63995 / QuickLoot_6230e23f021dec637edabaa368556c06; QuickLoot_a0f453fd098c0b0fda780f69cda6ffbf = QuickLoot_a0f453fd098c0b0fda780f69cda6ffbf / QuickLoot_6230e23f021dec637edabaa368556c06; LootFrame:ClearAllPoints(); if ( QuickLoot_b79f58e97448ef92532ff7249b75473f == nil ) then QuickLoot_a737304a0a12acb060c26b9da12f857c = 1; else QuickLoot_a737304a0a12acb060c26b9da12f857c = QuickLoot_b79f58e97448ef92532ff7249b75473f + 1; end for __index = QuickLoot_a737304a0a12acb060c26b9da12f857c, LOOTFRAME_NUMBUTTONS, 1 do local QuickLoot_99f3cf2c6f1fdfadb0fd4ab6e0843bf5 = getglobal("LootButton"..__index); if( QuickLoot_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:IsVisible() ) then QuickLoot_b254e387cf58e982ba24fcb3e8a63995 = QuickLoot_b254e387cf58e982ba24fcb3e8a63995 - 42; QuickLoot_a0f453fd098c0b0fda780f69cda6ffbf = QuickLoot_a0f453fd098c0b0fda780f69cda6ffbf + 56 + (40 * __index); if ( (QuickLoot_b254e387cf58e982ba24fcb3e8a63995 + 185) > UIParent:GetRight() or (QuickLoot_a0f453fd098c0b0fda780f69cda6ffbf - 256) < 55 ) then LootFrame:SetPoint("TOPLEFT", "UIParent", "TOPLEFT", 384, -104); else LootFrame:SetPoint("TOPLEFT", "UIParent", "BOTTOMLEFT", QuickLoot_b254e387cf58e982ba24fcb3e8a63995, QuickLoot_a0f453fd098c0b0fda780f69cda6ffbf); end return; end end if( LootFrameDownButton:IsVisible() ) then QuickLoot_b254e387cf58e982ba24fcb3e8a63995 = QuickLoot_b254e387cf58e982ba24fcb3e8a63995 - 158; QuickLoot_a0f453fd098c0b0fda780f69cda6ffbf = QuickLoot_a0f453fd098c0b0fda780f69cda6ffbf + 223; QuickLoot_b79f58e97448ef92532ff7249b75473f = nil; else QuickLoot_b254e387cf58e982ba24fcb3e8a63995 = QuickLoot_b254e387cf58e982ba24fcb3e8a63995 - 173; QuickLoot_a0f453fd098c0b0fda780f69cda6ffbf = QuickLoot_a0f453fd098c0b0fda780f69cda6ffbf + 25; end if ( (QuickLoot_b254e387cf58e982ba24fcb3e8a63995 + 185) > UIParent:GetRight() or (QuickLoot_a0f453fd098c0b0fda780f69cda6ffbf - 256) < 55 ) then LootFrame:SetPoint("TOPLEFT", "UIParent", "TOPLEFT", 384, -104); else LootFrame:SetPoint("TOPLEFT", "UIParent", "BOTTOMLEFT", QuickLoot_b254e387cf58e982ba24fcb3e8a63995, QuickLoot_a0f453fd098c0b0fda780f69cda6ffbf); end end local function QuickLoot_faf2bed235023baa472630c404e64623(self, QuickLoot_d0708241b607c9a9dd1953c812fadfb7, ...) if (QuickLoot_2b2c58e7d34a6c653e8604d78f176c4a) then if (QuickLoot_d0708241b607c9a9dd1953c812fadfb7 == "LOOT_OPENED") then QuickLoot_b79f58e97448ef92532ff7249b75473f = nil; end if ( QuickLoot_d0708241b607c9a9dd1953c812fadfb7 == "LOOT_SLOT_CLEARED" or QuickLoot_d0708241b607c9a9dd1953c812fadfb7 == "LOOT_OPENED" ) then QuickLoot_c2154f84867020d1494bd20708a67f04(); end if ( QuickLoot_eef948850914dc4b14c548b772f90ca8 == 1 ) then if ( QuickLoot_d0708241b607c9a9dd1953c812fadfb7 == "LOOT_OPENED" ) then if ( GetNumLootItems() == 0 ) then HideUIPanel(LootFrame); end end end end end local function QuickLoot_1e6ef3481ac5ba90408397c502501307(self) if (QuickLoot_2b2c58e7d34a6c653e8604d78f176c4a) then QuickLoot_c2154f84867020d1494bd20708a67f04(); end end function QuickLoot_1680508f4b27f832eca66babc0fd2dca(self, QuickLoot_99f3cf2c6f1fdfadb0fd4ab6e0843bf5) if (QuickLoot_2b2c58e7d34a6c653e8604d78f176c4a and QuickLoot_b79f58e97448ef92532ff7249b75473f == nil ) then QuickLoot_b79f58e97448ef92532ff7249b75473f = self:GetID(); end end function QuickLoot_OnLoad(self) ModManagement_RegisterMod( "QuickLoot", "Interface\\Icons\\Spell_Nature_UndyingStrength", MOD_QUICK_LOOT_TITLE, "", nil ); ModManagement_RegisterCheckBox( "QuickLoot", QUICK_LOOT_ENABLE, nil, "EnableQuickLoot", 1, function (arg) if (arg == 1 and not QuickLoot_2b2c58e7d34a6c653e8604d78f176c4a) then QuickLoot_2b2c58e7d34a6c653e8604d78f176c4a = 1; if (not isHooked) then LootFrame:HookScript("OnEvent", QuickLoot_faf2bed235023baa472630c404e64623); LootFrame:HookScript("Update", QuickLoot_1e6ef3481ac5ba90408397c502501307); hooksecurefunc("LootButton_OnClick", QuickLoot_1680508f4b27f832eca66babc0fd2dca); isHooked = true; end elseif (arg == 0 and QuickLoot_2b2c58e7d34a6c653e8604d78f176c4a) then QuickLoot_2b2c58e7d34a6c653e8604d78f176c4a = nil; end end ); ModManagement_RegisterCheckBox( "QuickLoot", QUICK_LOOT_AUTOHIDE, nil, "QuickLootAutoHide", 1, function (QuickLoot_7739b813d90aed43ab9d0eb84ec1c1ae) QuickLoot_eef948850914dc4b14c548b772f90ca8 = QuickLoot_7739b813d90aed43ab9d0eb84ec1c1ae; end, 1 ); end 