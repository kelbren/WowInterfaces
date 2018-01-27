﻿local BFChat = LibStub('AceAddon-3.0'):GetAddon('BigFootChat')
local L = LibStub("AceLocale-3.0"):GetLocale("BigFootChat")
local MODNAME = "ICONFRAME"
local BFChatIconFrame = BFChat:NewModule(MODNAME)
local BFC_NUM_TAB = 60
local BFC_ICON_SIZE_X = 25
local BFC_ICON_SIZE_Y = 25
local BFC_ICON_NUMBER_X = 10
local BFC_ICON_NUMBER_Y = 6
local chaticonbuttonlist = {}
local zoneName;
local MyData = {};
local CurEB = ChatFrame1EditBox;

BFC_IconTable = {
    { "{rt1}", "Interface\\TargetingFrame\\UI-RaidTargetingIcon_1" },
    { "{rt2}", "Interface\\TargetingFrame\\UI-RaidTargetingIcon_2" },
    { "{rt3}", "Interface\\TargetingFrame\\UI-RaidTargetingIcon_3" },
    { "{rt4}", "Interface\\TargetingFrame\\UI-RaidTargetingIcon_4" },
    { "{rt5}", "Interface\\TargetingFrame\\UI-RaidTargetingIcon_5" },
    { "{rt6}", "Interface\\TargetingFrame\\UI-RaidTargetingIcon_6" },
    { "{rt7}", "Interface\\TargetingFrame\\UI-RaidTargetingIcon_7" },
    { "{rt8}", "Interface\\TargetingFrame\\UI-RaidTargetingIcon_8" },
    { "{" .. L.Angel .. "}", "Interface\\AddOns\\BigFootChat\\icon\\angel.tga" },
    { "{" .. L.Angry .. "}", "Interface\\AddOns\\BigFootChat\\icon\\angry.tga" },
    { "{" .. L.Biglaugh .. "}", "Interface\\AddOns\\BigFootChat\\icon\\biglaugh.tga" },
    { "{" .. L.Clap .. "}", "Interface\\AddOns\\BigFootChat\\icon\\clap.tga" },
    { "{" .. L.Cool .. "}", "Interface\\AddOns\\BigFootChat\\icon\\cool.tga" },
    { "{" .. L.Cry .. "}", "Interface\\AddOns\\BigFootChat\\icon\\cry.tga" },
    { "{" .. L.Cute .. "}", "Interface\\AddOns\\BigFootChat\\icon\\cutie.tga" },
    { "{" .. L.Despise .. "}", "Interface\\AddOns\\BigFootChat\\icon\\despise.tga" },
    { "{" .. L.Dreamsmile .. "}", "Interface\\AddOns\\BigFootChat\\icon\\dreamsmile.tga" },
    { "{" .. L.Embarras .. "}", "Interface\\AddOns\\BigFootChat\\icon\\embarrass.tga" },
    { "{" .. L.Evil .. "}", "Interface\\AddOns\\BigFootChat\\icon\\evil.tga" },
    { "{" .. L.Excited .. "}", "Interface\\AddOns\\BigFootChat\\icon\\excited.tga" },
    { "{" .. L.Faint .. "}", "Interface\\AddOns\\BigFootChat\\icon\\faint.tga" },
    { "{" .. L.Fight .. "}", "Interface\\AddOns\\BigFootChat\\icon\\fight.tga" },
    { "{" .. L.Flu .. "}", "Interface\\AddOns\\BigFootChat\\icon\\flu.tga" },
    { "{" .. L.Freeze .. "}", "Interface\\AddOns\\BigFootChat\\icon\\freeze.tga" },
    { "{" .. L.Frown .. "}", "Interface\\AddOns\\BigFootChat\\icon\\frown.tga" },
    { "{" .. L.Greet .. "}", "Interface\\AddOns\\BigFootChat\\icon\\greet.tga" },
    { "{" .. L.Grimace .. "}", "Interface\\AddOns\\BigFootChat\\icon\\grimace.tga" },
    { "{" .. L.Growl .. "}", "Interface\\AddOns\\BigFootChat\\icon\\growl.tga" },
    { "{" .. L.Happy .. "}", "Interface\\AddOns\\BigFootChat\\icon\\happy.tga" },
    { "{" .. L.Heart .. "}", "Interface\\AddOns\\BigFootChat\\icon\\heart.tga" },
    { "{" .. L.Horror .. "}", "Interface\\AddOns\\BigFootChat\\icon\\horror.tga" },
    { "{" .. L.Ill .. "}", "Interface\\AddOns\\BigFootChat\\icon\\ill.tga" },
    { "{" .. L.Innocent .. "}", "Interface\\AddOns\\BigFootChat\\icon\\innocent.tga" },
    { "{" .. L.Kongfu .. "}", "Interface\\AddOns\\BigFootChat\\icon\\kongfu.tga" },
    { "{" .. L.Love .. "}", "Interface\\AddOns\\BigFootChat\\icon\\love.tga" },
    { "{" .. L.Mail .. "}", "Interface\\AddOns\\BigFootChat\\icon\\mail.tga" },
    { "{" .. L.Makeup .. "}", "Interface\\AddOns\\BigFootChat\\icon\\makeup.tga" },
    { "{" .. L.Mario .. "}", "Interface\\AddOns\\BigFootChat\\icon\\mario.tga" },
    { "{" .. L.Meditate .. "}", "Interface\\AddOns\\BigFootChat\\icon\\meditate.tga" },
    { "{" .. L.Miserable .. "}", "Interface\\AddOns\\BigFootChat\\icon\\miserable.tga" },
    { "{" .. L.Okay .. "}", "Interface\\AddOns\\BigFootChat\\icon\\okay.tga" },
    { "{" .. L.Pretty .. "}", "Interface\\AddOns\\BigFootChat\\icon\\pretty.tga" },
    { "{" .. L.Puke .. "}", "Interface\\AddOns\\BigFootChat\\icon\\puke.tga" },
    { "{" .. L.Shake .. "}", "Interface\\AddOns\\BigFootChat\\icon\\shake.tga" },
    { "{" .. L.Shout .. "}", "Interface\\AddOns\\BigFootChat\\icon\\shout.tga" },
    { "{" .. L.Silent .. "}", "Interface\\AddOns\\BigFootChat\\icon\\shuuuu.tga" },
    { "{" .. L.Shy .. "}", "Interface\\AddOns\\BigFootChat\\icon\\shy.tga" },
    { "{" .. L.Sleep .. "}", "Interface\\AddOns\\BigFootChat\\icon\\sleep.tga" },
    { "{" .. L.Smile .. "}", "Interface\\AddOns\\BigFootChat\\icon\\smile.tga" },
    { "{" .. L.Suprise .. "}", "Interface\\AddOns\\BigFootChat\\icon\\suprise.tga" },
    { "{" .. L.Surrender .. "}", "Interface\\AddOns\\BigFootChat\\icon\\surrender.tga" },
    { "{" .. L.Sweat .. "}", "Interface\\AddOns\\BigFootChat\\icon\\sweat.tga" },
    { "{" .. L.Tear .. "}", "Interface\\AddOns\\BigFootChat\\icon\\tear.tga" },
    { "{" .. L.Tears .. "}", "Interface\\AddOns\\BigFootChat\\icon\\tears.tga" },
    { "{" .. L.Think .. "}", "Interface\\AddOns\\BigFootChat\\icon\\think.tga" },
    { "{" .. L.Titter .. "}", "Interface\\AddOns\\BigFootChat\\icon\\titter.tga" },
    { "{" .. L.Ugly .. "}", "Interface\\AddOns\\BigFootChat\\icon\\ugly.tga" },
    { "{" .. L.Victory .. "}", "Interface\\AddOns\\BigFootChat\\icon\\victory.tga" },
    { "{" .. L.Volunteer .. "}", "Interface\\AddOns\\BigFootChat\\icon\\volunteer.tga" },
    { "{" .. L.Wronged .. "}", "Interface\\AddOns\\BigFootChat\\icon\\wronged.tga" },
}

local db
local defaults = {
    profile = {
        enablechaticon = false
    }
}

local optGetter, optSetter

do
    local mod = BFChatIconFrame
    function optGetter(info)
        local key = info[#info]
        return BFChat.db.profile[key]
    end

    function optSetter(info, value)
        local key = info[#info]
        BFChat.db.profile[key] = value
        mod:Refresh()
    end
end

local options
local getOptions = function()
    if not options then
        options = {
            type = "group",
            name = L["IconFrame"],
            arg = MODNAME,
            get = optGetter,
            set = optSetter,
            args = {
                intro = {
                    order = 1,
                    type = "description",
                    name = L["this function allows you to use emtion icons in your chat, and others who has this addon enabled can see your emtion icons"],
                },
                enablechaticon = {
                    order = 2,
                    type = "toggle",
                    name = L["Enable emotion icons"],
                    get = function() return BFChat:GetModuleEnabled(MODNAME) end,
                    set = function(info, value) BFChat:SetModuleEnabled(MODNAME, value) end,
                },
            }
        }
    end
    return options
end

local function createIconButton(text, texture, i)
    local chatTab = _G["BFCChatIconButton" .. i] or CreateFrame("Button", "BFCChatIconButton" .. i, BFCIconFrame, "BFCIconButtonTemplate")
    chatTab.id = i
    chatTab.text = text
    chatTab.texture = texture
    chatTab:SetNormalTexture(texture)
    return chatTab
end

local function setIconPosition(frame, icon, ix, iy)
    icon:SetPoint("TOPLEFT", frame, "TOPLEFT", (ix - 1) * BFC_ICON_SIZE_X + 5, -1 * (iy - 1) * BFC_ICON_SIZE_Y - 5)
end

local function arrangeIcons(frame, icons)
    local px = 1
    local py = 1
    for i = 1, BFC_NUM_TAB, 1 do
        setIconPosition(frame, icons[i], px, py)
        px = px + 1
        if px == BFC_ICON_NUMBER_X + 1 then
            px = 1
            py = py + 1
        end
    end
end

local function createRollFrame()
    local rollButton = _G.BFCIconFrameRollButton
    rollButton:SetPoint("TOPLEFT", BFCChatFrame, "TOPLEFT", 268, -3)
    if BFChat.db.profile.enableRollButton then
        rollButton:Show()
    end
    rollButton:SetScript("OnEnter", function(self)
        BigFoot_ShowNewbieTooltip(L["RollDice"])
    end)
    rollButton:SetScript("OnLeave", function(self)
        BigFoot_HideNewbieTooltip()
    end)
end

local function createReportFrame()
    local reportButton = _G.BFCIconFrameReportButton
    reportButton:SetPoint("TOPLEFT", BFCChatFrame, "TOPLEFT", 295, -3)
    if BFChat.db.profile.enableReportButton then
        reportButton:Show()
    end
    reportButton:SetScript("OnEnter", function(self)
        BigFoot_ShowNewbieTooltip(L["Report"])
    end)
    reportButton:SetScript("OnLeave", function(self)
        BigFoot_HideNewbieTooltip()
    end)
end

local function createIconFrame()
    local callOutButton = _G.BFCIconFrameCalloutButton
    local iconFrame = _G.BFCIconFrame
--    callOutButton:SetScript("OnClick", function()
--        if not iconFrame then
--            return
--        end
--        if iconFrame:IsShown() then
--            iconFrame:Hide()
--        else
--            iconFrame:Show()
--        end
--    end)
    callOutButton:SetScript("OnEnter", function() end)
    callOutButton:SetScript("OnLeave", function() end)
    callOutButton:SetAlpha(0.8)
    callOutButton:SetPoint("TOPLEFT", BFCChatFrame, "TOPLEFT", 2, -3)
    callOutButton:Show()

    local i = 0
    for k, v in pairs(BFC_IconTable) do
        i = i + 1
        chaticonbuttonlist[i] = createIconButton(v[1], v[2], k)
    end
    BFC_NUM_TAB = i
    arrangeIcons(iconFrame, chaticonbuttonlist)
    iconFrame.iconButtonList = chaticonbuttonlist
    iconFrame:SetScript("OnShow", function(self)
        local i = 1
        while (self.iconButtonList[i]) do
            self.iconButtonList[i]:Show()
            i = i + 1
        end
    end)
    iconFrame:SetScript("OnHide", function(self)
        local i = 1
        while (self.iconButtonList[i]) do
            self.iconButtonList[i]:Hide()
            i = i + 1
        end
    end)
end

function BFChatIconFrame:OnInitialize()
    self.db = BFChat.db:RegisterNamespace(MODNAME, defaults)
    db = self.db.profile
    self:SetEnabledState(BFChat:GetModuleEnabled(MODNAME))
    BFChat:RegisterModuleOptions(MODNAME, getOptions, L["IconFrame"])
    local worldFrame_MouseUp = WorldFrame:GetScript("OnMouseUp")
    if worldFrame_MouseUp then
        WorldFrame:HookScript("OnMouseUp", function()
            if BFCIconFrame then
                BFCIconFrame:Hide()
            end
        end)
    else
        WorldFrame:SetScript("OnMouseUp", function()
            if BFCIconFrame then
                BFCIconFrame:Hide()
            end
        end)
    end
end

function BFChatIconFrame:Refresh()
end

local function StartParseInputText(self)
    local text, tag = BFChat:ParseLocalText(self:GetText())
    if tag then
        self:SetText(text)
    end
end

local function StopParseInputText()
end

function BFChatIconFrame:OnEnable()
    for i = 1, 10 do
        local editBox = _G["ChatFrame" .. i .. "EditBox"]
        if editBox then
            editBox:SetScript("OnTextChanged", StartParseInputText)
        end
    end
    createIconFrame()
    createRollFrame()
    createReportFrame()
    if GetLocale() == "zhCN" then
        raidersFrame_Init();
    end;
    self:Refresh()
end

function BFChatIconFrame:OnDisable()
    for i = 1, 10 do
        local editBox = _G["ChatFrame" .. i .. "EditBox"]
        if editBox then
            editBox:SetScript("OnTextChanged", StopParseInputText)
        end
    end
    _G.BFCIconFrameCalloutButton:Hide()
    _G.BFCIconFrame:Hide()
end

function BFC_StartCount(frame)
    if frame:GetParent() ~= UIParent then
        BFC_StartCount(frame:GetParent())
        return
    end
    frame.showTimer = 1;
    frame.isCounting = 1;
end

function BFC_StopCount(frame)
    if frame:GetParent() ~= UIParent then
        BFC_StopCount(frame:GetParent())
        return
    end
    frame.isCounting = nil;
end

function BFC_OnUpdate(self, elapsed)
    if (not self.showTimer or not self.isCounting) then
        return;
    elseif (self.showTimer < 0) then
        self:Hide();
        self.showTimer = nil;
        self.isCounting = nil;
    else
        self.showTimer = self.showTimer - elapsed;
    end
end

function changeBGTexture(self, switch)
    local texture = _G[self:GetName() .. "BG"];
    if switch then
        texture:SetTexture("Interface\\AddOns\\BigFootChat\\icon\\text_push_frame");
    else
        texture:SetTexture("Interface\\AddOns\\BigFootChat\\icon\\text_nor_frame");
    end
end

function BFCIconFrameReportButton_SetButtonIcon(self, Myclass)
    self.icon = self:CreateTexture(nil, "OVERLAY");
    self.icon:SetWidth(21);
    self.icon:SetHeight(21);
    self.icon:SetPoint("CENTER", self, 0, 0);
    self.icon:SetTexture("Interface\\WorldStateFrame\\Icons-Classes");
    local coords = CLASS_BUTTONS[Myclass];
    self.icon:SetTexCoord(coords[1], coords[2], coords[3], coords[4]);
    self.icon:Show();
end

function BFCIconFrameReportButton_OnClick(self, button)
    if button == "LeftButton" then
        local msg = "";
        StatReport_UpdateMyData();
        msg = msg .. MyData.CLASS;
        if MyData.GS ~= 0 then
            msg = msg .. " GS:" .. MyData.GS;
        end;
        msg = msg .. StatReport_Strings_COMMA;
        msg = msg .. MyData.TKEY .. StatReport_Strings_TALENT .. MyData.TDATA;
        msg = msg .. StatReport_Strings_COMMA;

        if GetLocale() == "zhTW" then
            msg = msg .. StatReport_Strings_ILVL .. MyData.ILVL;
            msg = msg .. StatReport_Strings_COMMA;
        end
        if MyData.CLASS_EN == "MAGE" or MyData.CLASS_EN == "WARLOCK" then
            msg = msg .. StatReport_GetSpellText();
        end
        if MyData.CLASS_EN == "ROGUE" then
            msg = msg .. StatReport_GetMeleeText();
        end
        if MyData.CLASS_EN == "HUNTER" then
            msg = msg .. StatReport_GetRangedText();
        end
        if MyData.CLASS_EN == "DRUID" then
            if MyData.TKEY == GetTalentTabInfo(1) then
                msg = msg .. StatReport_GetSpellText();
            elseif MyData.TKEY == GetTalentTabInfo(2) then
                local shape = GetNumShapeshiftForms();
                local msgr;
                if shape then
                    for i = 1, shape do
                        local _, name, isActive, _ = GetShapeshiftFormInfo(i);
                        if (string.find(name, "熊") and isActive) then
                            msg = msg .. StatReport_GetTankText();
                            msgr = true;
                            break;
                        elseif (string.find(name, "豹") and isActive) then
                            msg = msg .. StatReport_GetMeleeText();
                            msgr = true;
                            break;
                        end
                    end
                    if not msgr then
                        msg = "请转变对应的形态后查看。熊形态显示坦克属性，豹形态显示输出属性。";
                        StatReport_Print(msg);
                        return;
                    end
                end
            elseif MyData.TKEY == GetTalentTabInfo(3) then
                msg = msg .. StatReport_GetHealText();
            else
                msg = msg .. StatReport_GetMeleeText();
            end
        end
        if MyData.CLASS_EN == "SHAMAN" then
            if MyData.TKEY == GetTalentTabInfo(1) then
                msg = msg .. StatReport_GetSpellText();
            elseif MyData.TKEY == GetTalentTabInfo(2) then
                msg = msg .. StatReport_GetMeleeText();
            elseif MyData.TKEY == GetTalentTabInfo(3) then
                msg = msg .. StatReport_GetHealText();
            else
                msg = msg .. StatReport_GetMeleeText();
            end
        end
        if MyData.CLASS_EN == "PALADIN" then
            if MyData.TKEY == GetTalentTabInfo(1) then
                msg = msg .. StatReport_GetHealText();
            elseif MyData.TKEY == GetTalentTabInfo(2) then
                msg = msg .. StatReport_GetTankText();
            elseif MyData.TKEY == GetTalentTabInfo(3) then
                msg = msg .. StatReport_GetMeleeText();
            else
                msg = msg .. StatReport_GetMeleeText();
            end
        end
        if MyData.CLASS_EN == "PRIEST" then
            if MyData.TKEY == GetTalentTabInfo(1) then
                msg = msg .. StatReport_GetSpellAndHealText();
            elseif MyData.TKEY == GetTalentTabInfo(2) then
                msg = msg .. StatReport_GetHealText();
            elseif MyData.TKEY == GetTalentTabInfo(3) then
                msg = msg .. StatReport_GetSpellText();
            else
                msg = msg .. StatReport_GetSpellText();
            end
        end
        if MyData.CLASS_EN == "WARRIOR" then
            if MyData.TKEY == GetTalentTabInfo(1) then
                msg = msg .. StatReport_GetMeleeText();
            elseif MyData.TKEY == GetTalentTabInfo(2) then
                msg = msg .. StatReport_GetMeleeText();
            elseif MyData.TKEY == GetTalentTabInfo(3) then
                msg = msg .. StatReport_GetTankText();
            else
                msg = msg .. StatReport_GetMeleeText();
            end
        end
        if MyData.CLASS_EN == "DEATHKNIGHT" then
            if (MyData.DODGE + MyData.PARRY) > 35 then
                msg = msg .. StatReport_GetTankText();
            else
                msg = msg .. StatReport_GetMeleeText();
            end
        end
        msg = msg .. StatReport_Strings_END;
        StatReport_ChatFrameEditBoxMSG(msg);
    end
end

function BFCIconFrameReportButton_OnUpdate(self)
    for i = 1, NUM_CHAT_WINDOWS do
--        local CheckEB = _G[format("%s%d%s", "ChatFrame", i, "EditBox")];
        local CheckEB = ChatFrameEditBox;
        if CheckEB:GetAlpha() == 1 and CheckEB:IsShown() then
            CurEB = CheckEB;
            return;
        end
    end
end

function StatReport_ChatFrameEditBoxMSG(msg)
    local ExistMSG = CurEB:GetText() or "";
    if CurEB:IsShown() then
        CurEB:Insert(msg);
    else
        StatReport_Print(msg);
    end
end

function StatReport_GetPvPSpecText(switch)
    local text = "";
    if MyData.PvPSET then
        text = text .. MyData.CRDEF .. StatReport_Strings_CRDEF;
        text = text .. StatReport_Strings_COMMA;
        if switch then
            text = text .. MyData.SPEN .. StatReport_Strings_SPEN;
            text = text .. StatReport_Strings_COMMA;
        end
        text = text .. MyData.HP .. StatReport_Strings_HP;
        text = text .. StatReport_Strings_COMMA;
    end
    return text;
end

function StatReport_GetSpellText()
    local text = "";
    text = text .. StatReport_GetPvPSpecText(1);
    text = text .. MyData.MP .. StatReport_Strings_MP;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.SSP .. StatReport_Strings_SSP;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.SHIT .. StatReport_Strings_HIT;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.SHASTE .. StatReport_Strings_HASTE;
    text = text .. StatReport_Strings_COMMA;
    text = text .. format("%.1f%%", MyData.SCRIT) .. StatReport_Strings_CRIT;
    return text;
end

function StatReport_GetHealText()
    local text = "";
    text = text .. StatReport_GetPvPSpecText(1);
    text = text .. MyData.MP .. StatReport_Strings_MP;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.SHP .. StatReport_Strings_SHP;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.SHASTE .. StatReport_Strings_HASTE;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.SMR .. "/" .. StatReport_Strings_SMR;
    text = text .. StatReport_Strings_COMMA;
    text = text .. format("%.1f%%", MyData.SCRIT) .. StatReport_Strings_CRIT;
    return text;
end

function StatReport_GetSpellAndHealText()
    local text = ""; text = text .. StatReport_GetPvPSpecText(1);
    text = text .. MyData.MP .. StatReport_Strings_MP;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.SSP .. StatReport_Strings_SSP;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.SHP .. StatReport_Strings_SHP;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.SHIT .. StatReport_Strings_HIT;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.SHASTE .. StatReport_Strings_HASTE;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.SMR .. "/" .. StatReport_Strings_SMR;
    text = text .. StatReport_Strings_COMMA;
    text = text .. format("%.1f%%", MyData.SCRIT) .. StatReport_Strings_CRIT;
    return text;
end

function StatReport_GetMeleeText()
    local text = "";
    text = text .. StatReport_GetPvPSpecText();
    text = text .. MyData.MAP .. StatReport_Strings_AP;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.MHIT .. StatReport_Strings_HIT;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.MEXPER .. StatReport_Strings_EXPER;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.MHASTE .. StatReport_Strings_HASTE;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.MRPEN .. StatReport_Strings_MRPEN;
    text = text .. StatReport_Strings_COMMA;
    text = text .. format("%.1f%%", MyData.MCRIT) .. StatReport_Strings_CRIT;
    return text;
end

function StatReport_GetRangedText()
    local text = "";
    text = text .. StatReport_GetPvPSpecText();
    text = text .. MyData.RAP .. StatReport_Strings_AP;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.RHIT .. StatReport_Strings_HIT;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.RHASTE .. StatReport_Strings_HASTE;
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.MRPEN .. StatReport_Strings_MRPEN;
    text = text .. StatReport_Strings_COMMA;
    text = text .. format("%.1f%%", MyData.RCRIT) .. StatReport_Strings_CRIT;
    return text;
end

function StatReport_GetTankText()
    local text = "";
    if MyData.PvPSET then
        text = text .. StatReport_GetPvPSpecText();
    else
        text = text .. MyData.HP .. StatReport_Strings_HP;
    end
    text = text .. StatReport_Strings_COMMA;
    text = text .. MyData.DEF .. StatReport_Strings_DEF;
    text = text .. StatReport_Strings_COMMA;
    text = text .. format("%.1f%%", MyData.DODGE) .. StatReport_Strings_DODGE;
    text = text .. StatReport_Strings_COMMA;
    if (MyData.CLASS_EN ~= "DRUID") then
        text = text .. format("%.1f%%", MyData.PARRY) .. StatReport_Strings_PARRY;
        text = text .. StatReport_Strings_COMMA;
        if (MyData.CLASS_EN ~= "DEATHKNIGHT") then
            text = text .. format("%.1f%%", MyData.BLOCK) .. StatReport_Strings_BLOCK;
            text = text .. StatReport_Strings_COMMA;
        end
    end
    text = text .. MyData.ARMOR .. StatReport_Strings_ARMOR;
    return text;
end

function StatReport_UpdateMyData()
    MyData.Name = UnitName("player");
    MyData.LV = UnitLevel("player");
    MyData.CLASS, MyData.CLASS_EN = UnitClass("player");
    MyData.HP = UnitHealthMax("player");
    MyData.MP = UnitManaMax("player");
    MyData.TKEY, MyData.TDATA = StatReport_TalentData();
    MyData.ILVL = StatReport_UnitItem_ilvl_AVG("player");
    MyData.GS = 0;

    if GearScore_GetScore then
        MyData.GS = GearScore_GetScore(UnitName("player"), "player") or GS_Data[GetRealmName()].Players[UnitName("player")].GearScore or 0;
    end;

    MyData.STR = UnitStat("player", 1);
    MyData.AGI = UnitStat("player", 2);
    MyData.STA = UnitStat("player", 3);
    MyData.INT = UnitStat("player", 4);
    MyData.SPI = UnitStat("player", 5);
    MyData.MAP = StatReport_UnitAttackPower();
    MyData.MHIT = GetCombatRating(6);
    MyData.MCRIT = GetCritChance();
    MyData.MEXPER = GetExpertise();
    MyData.MHASTE = GetCombatRating(18);
    MyData.RAP = StatReport_UnitRangedAttackPower();
    MyData.RHIT = GetCombatRating(7);
    MyData.RCRIT = GetRangedCritChance();
    MyData.RHASTE = GetCombatRating(19);
    MyData.MRPEN = GetCombatRating(25);
    MyData.SSP = StatReport_GetSpellBonusDamage();
    MyData.SHP = GetSpellBonusHealing();
    MyData.SHIT = GetCombatRating(8);
    MyData.SCRIT = StatReport_GetSpellCritChance();
    MyData.SHASTE = GetCombatRating(20);
    MyData.SMR = floor(GetManaRegen() * 5);
    MyData.SPEN = GetSpellPenetration();
    _, _, MyData.ARMOR = UnitArmor("player");
    MyData.DEF = StatReport_UnitDefense();
    MyData.DODGE = GetDodgeChance();
    MyData.PARRY = GetParryChance();
    MyData.BLOCK = GetBlockChance();
    MyData.CRDEF = GetCombatRating(15);
    if MyData.CRDEF > (200 * (MyData.LV / 70)) then
        MyData.PvPSET = true;
    else
        MyData.PvPSET = false;
    end
end

function StatReport_TalentData()
    local name1, _, pointsSpent1 = GetTalentTabInfo(1);
    local name2, _, pointsSpent2 = GetTalentTabInfo(2);
    local name3, _, pointsSpent3 = GetTalentTabInfo(3);
    local nameKey = StatReport_Strings_NONE;
    local TalentStat = "";

    if not (pointsSpent1 == 0 and pointsSpent2 == 0 and pointsSpent3 == 0) then
        local tmpname, temppointsSpent;
        tmpname = ((pointsSpent1 > pointsSpent2) and name1) or name2;
        temppointsSpent = ((pointsSpent1 > pointsSpent2) and pointsSpent1) or pointsSpent2;
        tmpname = ((temppointsSpent > pointsSpent3) and tmpname) or name3; nameKey = tmpname;
    end
    if nameKey ~= StatReport_Strings_NONE then
        TalentStat = ("(%s/%s/%s)"):format(pointsSpent1, pointsSpent2, pointsSpent3);
    end
    return nameKey, TalentStat;
end

function StatReport_UnitAttackPower()
    local base, posBuff, negBuff = UnitAttackPower("player");
    return floor(base + posBuff + negBuff);
end

function StatReport_UnitRangedAttackPower()
    local base, posBuff, negBuff = UnitRangedAttackPower("player");
    return floor(base + posBuff + negBuff);
end

function StatReport_GetSpellBonusDamage()
    local SSP = GetSpellBonusDamage(2);
    for i = 3, 7 do
        SSP = max(SSP, GetSpellBonusDamage(i));
    end
    return floor(SSP);
end

function StatReport_GetSpellCritChance()
    local SCRIT = GetSpellCritChance(2);
    for i = 3, 7 do
        SCRIT = max(SCRIT, GetSpellCritChance(i));
    end
    return SCRIT;
end

function StatReport_UnitDefense()
    local baseDEF, posDEF = UnitDefense("player");
    return floor(baseDEF + posDEF);
end

function StatReport_UnitItem_ilvl_AVG(unit)
    local _, uc = UnitClass(unit);
    local ul = UnitLevel(unit);
    local qualitypara = {
        [0] = 0.0,
        [1] = 0.1,
        [2] = 0.6,
        [3] = 0.8,
        [4] = 1.0,
        [5] = 1.05,
        [6] = 1.15,
        [7] = 1.0,
    };
    local slotpara = {
        [1] = 3.5,
        [2] = 2,
        [3] = 2.5,
        [4] = 0,
        [5] = 3.7,
        [6] = 2.3,
        [7] = 3.5,
        [8] = 2.4,
        [9] = 1.6,
        [10] = 2.5,
        [11] = 2.1,
        [12] = 2.1,
        [13] = 2,
        [14] = 2,
        [15] = 1.8,
        [16] = 6,
        [17] = 2,
        [18] = 1,
        [19] = 0,
    };
    if uc == "HUNTER" then
        slotpara[16] = 3;
        slotpara[17] = 1;
        slotpara[18] = 5;
    elseif uc == "WARRIOR" then
        if MyData.TKEY == GetTalentTabInfo(3) then
            slotpara[16] = 3.5;
            slotpara[17] = 4.5;
            slotpara[18] = 1;
        else
            slotpara[16] = 5;
            slotpara[17] = 3;
            slotpara[18] = 1;
        end
    elseif uc == "ROGUE" or uc == "DEATHKNIGHT" then
        slotpara[16] = 5;
        slotpara[17] = 3;
        slotpara[18] = 1;
    elseif uc == "SHAMAN" then
        if MyData.TKEY == GetTalentTabInfo(2) then
            slotpara[16] = 5;
            slotpara[17] = 3;
            slotpara[18] = 1;
        end
    elseif uc == "PALADIN" then
        if MyData.TKEY == GetTalentTabInfo(2) then
            slotpara[16] = 3.5;
            slotpara[17] = 4.5;
            slotpara[18] = 1;
        end
    end
    local quality, iLevel;
    local itemcount = 0;
    local levelcount = 0;
    local paracount = 0;
    for i = 1, 18, 1 do
        if i ~= 4 then
            local link = GetInventoryItemLink(unit, i);
            if (link) then
                _, _, quality, iLevel = GetItemInfo(link);
                if (quality >= 1 and quality <= 7) then
                    if (quality == 7) and (iLevel < ul * 2) then
                        if ul < 60 then
                            iLevel = ul;
                        else
                            iLevel = 60 + (((ul - 60) * (ul - 60)) / 3);
                        end
                    end
                    itemcount = itemcount + 1;
                    levelcount = levelcount + iLevel * qualitypara[quality] * slotpara[i];
                    paracount = paracount + slotpara[i];
                end
            end
        end
    end
    return floor((levelcount / paracount) + 0.5);
end

function StatReport_Print(msg)
    if DEFAULT_CHAT_FRAME then
        DEFAULT_CHAT_FRAME:AddMessage(StatReport_Preview, 1, 0.9, 0.4);
        DEFAULT_CHAT_FRAME:AddMessage(tostring(msg), 1, 0.9, 0.4);
    end
end
