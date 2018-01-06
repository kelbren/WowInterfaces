﻿local L = LibStub("AceLocale-3.0"):NewLocale("TradeskillInfoUI", "zhCN", false)
if not L then return end
TRADESKILL_INFO = "商业技能库"
TRADESKILLINFO_SEARCH = "查询";
TRADESKILLINFO_RESET = "重置"
L["TradeskillInfo"] = "商业技能信息";
L["Opposing"] = "对方阵营"
L["Include recipes from opposing faction"] = "包含对方阵营的配方"
L["Name"] = "名称"
L["Search for name"] = "以名称来查询"
L["Reagent"] = "材料"
L["Search for reagents"] = "以材料来查询"
L["Player known"] = "玩家已经学会"
L["Player can learn"] = "玩家现在可学"
L["Player will be able to learn"] = "玩家将来可学"
L["Alt known"] = "玩家其它人物已经学会"
L["Alt can learn"] = "玩家其它人物现在可学"
L["Alt will be able to learn"] = "玩家其它人物将来可学"
L["Unavailable"] = "不可学"
L["Neutral"] = "中立"
L["Alliance"] = "联盟"
L["Horde"] = "部落"
L["Item not in local cache."] = "本地缓存中没有该物品."
L["Click to try to update local cache."] = "左键点击尝试更新该物品."
L["Warning! You can be disconnected."] = "注意! 这可能导致你与服务器断开连接."
L["Availability"] = "过滤方式"
L["Tradeskills"] = "技能"
L["Recipe"] = "配方"
L["Known By"] = "已经学会"
L["Learnable By"] = "现在可学"
L["Will Be Learnable By"] = "将来可学"
L["Source"] = "来源"
L["Used in"] = "用途"
L["Usable by"] = "可用"
L["Show who can use an item"] = "在鼠标提示中显示哪些人可使用指定的物品"
L["Banked"] = "库存"
L["Show how many you have in the bank (Req CharacterInfoStorage)"] = "在鼠标提示中显示在银行的物品库存数量 (需配合CharacterInfoStorage)"
L["Alt Amount"] = "玩家其它人物库存"
L["Show how many you have on alt's  (Req CharacterInfoStorage)"] = "在鼠标提示中显示其它人物银行的物品库存数量 (需配合CharacterInfoStorage)"
L["ItemID"] = "物品ID"
L["Stack Size"] = "叠堆数量"
L["Recipe Source"] = "配方来源"
L["Recipe Price"] = "配方售价"
L["Skill required"] = "制造等级"
L["Show skill required"] = "显示制造需要的技能等级"
L["Combine cost"] = "显示制造成本"
L["Show combine cost"] = "显示制造成本"
L["Show recipe reagents in tooltip at trainer"] = "在鼠标提示中显示配方需要的材料"
L["Quick Search"] = "快速查询"
L["Enable Quick Search"] = "启用快速查找"
L["Save Frame Position"] = "储存窗口位置"
L["Remember TradeskillInfoUI frame position"] = "记住专业技能资料库的界面位置"
L["Color Recipes"] = "配方着色"
L["Color recipes in the Auction House"] = "为拍卖行的配方着色"
L["Search Mouse Button"] = "鼠标按键"
L["Mouse button that does a quick search"] = "快速查找使用的鼠标按键"
L["Left Button"] = "左键"
L["Right Button"] = "右键"
L["Frame Strata"] = "窗口优先度"
L["Set TradeskillInfoUI frame strata"] = "设定窗口的优先级"
L["LOW"] = "低"
L["MEDIUM"] = "中"
L["HIGH"] = "高"
L["Quick Search"] = "快速查询"
L["Auction House"] = "拍卖场"
L["You can learn"] = "现在可学"
L["An alt can learn"] = "其它人物现在可学"
L["You will be able to learn"] = "将来可学"
L["An alt will be able to learn"] = "其它人物将来可学"
L["Unavailable or already known"] = "已经学会或不可学"
L["Tooltip"] = "提示"
L["Tradeskill"] = "商业技能"
L["Auction"] = "拍卖"
L["UI Scale"] = "UI缩放"
L["Trainer"] = "训练师"
L["Reagents"] = "材料"
L["Will be able to learn"] = "将来可学"
L["Show the source of the item"] = "显示物品的来源"
-- TODO
L["Market Value"] = "市场价值"
L["Tooltip Options"] = "提示设定"
L["Flags"] = "提示"
L["Show what tradeskill an item is used"] = "显示什么专业可以使用物品"
L["Show who knows a recipe"] = "显示谁已知的配方"
L["Show who can learn a recipe"] = "显示谁可学的配方"
L["Show who will be able to learn a recipe"] = "显示谁未来可学的配方"
L["Show the profit calculation from Auctioneer Market Value"] = "查看利润计算从拍卖市场价值"
L["Colors"] = "颜色"
L["Trade Skill"] = "专业技能"
L["Trade Skill Window options"] = "专业技能视窗选项"
L["Trainer Window"] = "训练师视窗"
L["Trainer Window options"] = "训练师视窗选项"
L["Reagents Color"] = "材料颜色"
L["Color of recipe reagents in tooltip at trainer"] = "在训练师时显示配方材料颜色在提示上"
L["Shift"] = "Shift"
L["Control"] = "Ctrl"
L["Alt"] = "Alt"
L["UI"] = "UI"
L["UI Options"] = "UI 设定"
L["Search Modifier Key"] = "搜寻热键"
L["Modifier key to be held down for quick search"] = "按住热键快速搜寻"
L["Auction House Options"] = "拍卖行设定"
L["Auction House related options"] = "拍卖行相关设定"
L["Profile"] = "利润"
L["Show the item's ID"] = "显示物品编号"
L["Show the item's stack size"] = "显示物品堆栈大小"
L["Show the source of recipes"] = "显示配方来源"
L["Show the price of recipes sold by vendors"] = "显示配方的卖价"
L["Recipes"] = "配方"
L["Sort by"] = "排序"
L["Difficulty"] = "难度"
L["Auction Profit"] = "拍卖利益"
L["Vendor Profit"] = "贩卖利益"
L["Color usable by"] = "可用的颜色"
L["Color the alt names in tooltip according to maximum combine difficulty"] = "在提示上彩化alt名称根据最大结合困难"