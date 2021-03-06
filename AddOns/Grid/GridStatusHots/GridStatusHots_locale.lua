﻿local L = AceLibrary("AceLocale-2.2"):new("GridStatusHots")

L:RegisterTranslations("enUS", function()
	return {
		["My HoTs"] = true,
		["Buff: Hot Count"] = true,
		["Buff: My Earth Shield"] = true,
		["Buff: My Gift of the Naaru"] = true,
		["Buff: My Renew"] = true,
		["Buff: My Rejuvenation"] = true,
		["Buff: My Regrowth"] = true,
		["Buff: My Lifebloom"] = true,
		["Buff: My Lifebloom Stack Colored"] = true,
		["Buff: My Wild Growth"] = true,
		["Buff: My Sheath of Light"] = true,
		["Buff: My Sacred Shield"] = true,
		["Buff: My Riptide"] = true,
		["Buff: My Earthliving"] = true,
		["Buff: My Flash of Light"] = true,
		["Buff: My Prayer of Mending"] = true,
		["Buff: My Beacon of Light"] = true,
		["Buff: My Grace Stack"] = true,
		["Buff: My Grace Duration + Stack"] = true,
		["Color when player has two charges of PoM."] = true,
		["Color when player has three charges of PoM."] = true,
		["Color when player has four charges of PoM."] = true,
		["Color when player has five charges of PoM."] = true,
		["Color when player has six charges of PoM."] = true,
		["Color when player has 2 charges of Earth Shield."] = true,
		["Color when player has 3 charges of Earth Shield."] = true,
		["Color when player has 4 charges of Earth Shield."] = true,
		["Color when player has 5 or more charges of Earth Shield."] = true,
		["Color when player has two charges of grace."] = true,
		["Color when player has three charges of grace."] = true,
		["Threshold to activate color 2"] = true,
		["Threshold to activate color 3"] = true,
		["Color 2"] = true,
		["Color 3"] = true,
		["Color 4"] = true,
		["Color 5"] = true,
		["Color 6"] = true,
		["Refresh frequency"] = true,
		["Seconds between status refreshes"] = true,
		["Count Lifebloom as 1 HoT per stack"] = true,
		["Check, if you want each stack of Lifebloom to count as 1 HoT"]= true,
		["Show HoT-Counter"] = true,
		["Check, if you want to see the total of HoTs behind the countdown of your HoT(i.e. 13-5)"]= true,
		["Show Flash of Light - HoT"] = true,
		["Check, if you want to see a countdown for your Flash of Light - HoT behind your Sacred Shield (i.e. 25-10)"] = true,
	}
end)

L:RegisterTranslations("deDE", function()
	return {
		["My HoTs"] = "Meine HoTs",
		["Buff: Hot Count"] = "Buff: Anzahl HoTs",
		["Buff: My Renew"] = "Buff: Meine Erneuerung",
		["Buff: My Rejuvenation"] = "Buff: Meine Verjüngung",
		["Buff: My Regrowth"] = "Buff: Mein Nachwachsen",
		["Buff: My Lifebloom"] = "Buff: Mein Blühendes Leben",
		["Buff: My Lifebloom Stack Colored"] = "Buff: Mein Blühendes Leben - Farbe abhängig von Anzahl Stapel",
		["Buff: My Wild Growth"] = "Buff: Mein Wildwuchs",
		["Buff: My Sheath of Light"] = "Buff: Mein Von Licht ummantelt",
		["Buff: My Sacred Shield"] = "Buff: Mein Geheiligter Schild",
		["Buff: My Riptide"] = "Buff: Meine Springflut",
		["Buff: My Earthliving"] = "Buff: Meine Lebensgeister",
		["Buff: My Earth Shield"] = "Buff: Mein Erdschild",
		["Buff: My Gift of the Naaru"] = "Buff: Meine Gabe der Naaru",
		["Buff: My Flash of Light"] = "Buff: Mein Lichtblitz",
		["Buff: My Prayer of Mending"] = "Buff: Mein Gebet der Besserung",
		["Buff: My Beacon of Light"] = "Buff: Meine Flamme des Glaubens",
		["Buff: My Grace Stack"] = "Buff: Meine Barmherzigkeit Stapel",
		["Buff: My Grace Duration + Stack"] = "Buff: Meine Barmherzigkeit Dauer + Stapel",
		["Color when player has two charges of PoM."] = "Farbe bei zwei verbleibenden Aufladungen",
		["Color when player has three charges of PoM."] = "Farbe bei drei verbleibenden Aufladungen",
		["Color when player has four charges of PoM."] = "Farbe bei vier verbleibenden Aufladungen",
		["Color when player has five charges of PoM."] = "Farbe bei fünf verbleibenden Aufladungen",
		["Color when player has six charges of PoM."] = "Farbe bei sechs verbleibenden Aufladungen",
		["Color when player has 2 charges of Earth Shield."] = "Farbe bei zwei verbleibenden Aufladungen",
		["Color when player has 3 charges of Earth Shield."] = "Farbe bei drei verbleibenden Aufladungen",
		["Color when player has 4 charges of Earth Shield."] = "Farbe bei vier verbleibenden Aufladungen",
		["Color when player has 5 or more charges of Earth Shield."] = "Farbe bei fünf oder mehr verbleibenden Aufladungen",
		["Color when player has two charges of grace."] = "Farbe, wenn der Spieler zwei Mal Barmherzigkeit hat.",
		["Color when player has three charges of grace."] = "Farbe, wenn der Spieler drei Mal Barmherzigkeit hat.",
		["Threshold to activate color 2"] = "Schwelle zum Aktivieren von Farbe 2",
		["Threshold to activate color 3"] = "Schwelle zum Aktivieren von Farbe 3",
		["Color 2"] = "Farbe 2",
		["Color 3"] = "Farbe 3",
		["Color 4"] = "Farbe 4",
		["Color 5"] = "Farbe 5",
		["Color 6"] = "Farbe 6",
		["Refresh frequency"] = "Frequenz der Statusupdates",
		["Seconds between status refreshes"] = "Sekunden zwischen den Statusupdate",
		["Count Lifebloom as 1 HoT per stack"] = "Zähle Blühendes Leben als 1 HoT pro Aufladung",
		["Check, if you want each stack of Lifebloom to count as 1 HoT"] = "Auswählen, falls jede Aufladung von Blühendes Leben als ein HoT zählen soll",
		["Show HoT-Counter"] = "Zeige HoT-Zähler",
		["Check, if you want to see the total of HoTs behind the countdown of your HoT(i.e. 13-5)"] = "Auswählen, falls die Gesamtzahl HoTs hinter dem Countdown angezeigt werden soll (z.B. 13-5)",
		["Show Flash of Light - HoT"] = "Zeige Lichtblitz - HoT",
		["Check, if you want to see a countdown for your Flash of Light - HoT behind your Sacred Shield (i.e. 25-10)"] = "Auswählen, falls du einen Countdown für deinen Lichtblitz HoT hinter dem geheiligten Schild sehen willst (z.B. 25-10)",
	}
end)

L:RegisterTranslations("koKR", function()
	return {
		["My HoTs"] = "나의 지속치유",
		["Buff: Hot Count"] = "버프: 지속 치유 갯수",
		["Buff: My Earth Shield"] = "버프: 나의 대지의 보호막",
		["Buff: My Gift of the Naaru"] = "버프: 나의 나루의 선물",
		["Buff: My Renew"] = "버프 : 나의 소생",
		["Buff: My Rejuvenation"] = "버프 : 나의 회복",
		["Buff: My Regrowth"] = "버프 : 나의 재생",
		["Buff: My Lifebloom"] = "버프: 나의 피어나는 생명",
		["Buff: My Lifebloom Stack Colored"] = "버프: 나의 피어나는 생명 중첩 색상",
		["Buff: My Wild Growth"] = "버프: 나의 급속 성장",
		["Buff: My Sheath of Light"] = "버프: 나의 수호의 빛",
		["Buff: My Sacred Shield"] = "버프: 나의 성스러운 보호막",
		["Buff: My Riptide"] = "버프: 나의 성난 해일",
		["Buff: My Earthliving"] = "버프: 나의 대지의 생명",
		["Buff: My Flash of Light"] = "버프: 나의 빛의 섬광",
		["Buff: My Prayer of Mending"] = "버프: 나의 회복의 기원",
		["Buff: My Beacon of Light"] = "버프: 나의 빛의 봉화",
		["Buff: My Grace Stack"] = "버프: 나의 은총 중첩",
		["Buff: My Grace Duration + Stack"] = "버프: 나의 은총 지속시간 + 중첩",
		["Color when player has two charges of PoM."] = "플레이어에 회복의 기원 2중첩일 때 색상",
		["Color when player has three charges of PoM."] = "플레이어에 회복의 기원 3중첩일 때 색상",
		["Color when player has four charges of PoM."] = "플레이어에 회복의 기원 4중첩일 때 색상",
		["Color when player has five charges of PoM."] = "플레이어에 회복의 기원 5중첩일 때 색상",
		["Color when player has six charges of PoM."] = "플레이어에 회복의 기원 6중첩일 때 색상",
		["Color when player has 2 charges of Earth Shield."] = "플레이어에 대지의 보호막 2이하일 때 색상",
		["Color when player has 3 charges of Earth Shield."] = "플레이어에 대지의 보호막 3일때 색상",
		["Color when player has 4 charges of Earth Shield."] = "플레이어에 대지의 보호막 4일때 색상",
		["Color when player has 5 or more charges of Earth Shield."] = "플레이어에 대지 보호막 5이상일 때 색상",
		["Color when player has two charges of grace."] = "플레이어에 은총 2중첩일 때 색상",
		["Color when player has three charges of grace."] = "플레이어에 은총 3중첩일 때 색상",
		["Threshold to activate color 2"] = "색상 2을 사용할 수치",
		["Threshold to activate color 3"] = "색상 3을 사용할 수치",
		["Color 2"] = "색상 2",
		["Color 3"] = "색상 3",
		["Color 4"] = "색상 4",
		["Color 5"] = "색상 5",
		["Color 6"] = "색상 6",
		["Refresh frequency"] = "재확인 빈도",
		["Seconds between status refreshes"] = "상태 재확인 지속시간(초)을 설정합니다.",
		["Count Lifebloom as 1 HoT per stack"] = "피생 지속치유 중첩을 1개로 표시",
		["Check, if you want each stack of Lifebloom to count as 1 HoT"]= "당신이 피어나는 생명의 각 중첩 지속치유를 1개로 보여주길 원한다면 체크합니다.",
		["Show HoT-Counter"] = "HoT-갯수 표시",
		["Check, if you want to see the total of HoTs behind the countdown of your HoT(i.e. 13-5)"]= "당신의 지속치유 갯수를 전부 보여주길 원한다면 체크합니다. (예. 13-5)",
		["Show Flash of Light - HoT"] = "빛의 섬광 표시 - HOT",
		["Check, if you want to see a countdown for your Flash of Light - HoT behind your Sacred Shield (i.e. 25-10)"] = "당신의 빛의 섬광 - 지속치유를 성스러운 보호막 뒤에 보여주실 원한다면 체크합니다. (예. 25-10)",
	}
end)

L:RegisterTranslations("esES", function()
    return {
        ["My HoTs"] = "Mis HoTs",
        ["Buff: Hot Count"] = "Buff: Contador de HoTs",
        ["Buff: My Earth Shield"] = "Buff: Mi Escudo de Tierra",
        ["Buff: My Gift of the Naaru"] = "Buff: Mi Regalo de los Naaru",
        ["Buff: My Renew"] = "Buff: Mi Renovar",
        ["Buff: My Rejuvenation"] = "Buff: Mi Rejuvenecimiento",
        ["Buff: My Regrowth"] = "Buff: Mi Recrecimiento",
        ["Buff: My Lifebloom"] = "Buff: Mi Flor de Vida",
        ["Buff: My Lifebloom Stack Colored"] = "Buff: Mi Flor de Vida Pintar Stack",
        ["Buff: My Wild Growth"] = "Buff: Mi Crecimiento Salvaje",
        ["Buff: My Sheath of Light"] = "Buff: Mi Vaina de Luz",
        ["Buff: My Sacred Shield"] = "Buff: Mi Escudo Sagrado",
        ["Buff: My Riptide"] = "Buff: Mi Mareas Vivas",
        ["Buff: My Earthliving"] = "Buff: Mi Arma de Vida Terrestre",
        ["Buff: My Flash of Light"] = "Buff: Mi Destello de Luz",
        ["Buff: My Prayer of Mending"] = "Buff: Mi Rezo de Alivio",
        ["Buff: My Beacon of Light"] = "Buff: Mi Señal de la Luz",
        ["Buff: My Grace Stack"] = "Buff: Mi Gracia Stack",
        ["Buff: My Grace Duration + Stack"] = "Buff: Mi Gracia Duración + Stack",
        ["Color when player has two charges of PoM."] = "Color cuando el jugador tiene dos cargas de Rezo de Alivio",
        ["Color when player has three charges of PoM."] = "Color cuando el jugador tiene tres cargas de Rezo de Alivio",
        ["Color when player has four charges of PoM."] = "Color cuando el jugador tiene cuatro cargas de Rezo de Alivio",
        ["Color when player has five charges of PoM."] = "Color cuando el jugador tiene cinco cargas de Rezo de Alivio",
        ["Color when player has six charges of PoM."] = "Color cuando el jugador tiene seis cargas de Rezo de Alivio",
        ["Color when player has 2 charges of Earth Shield."] = "Color cuando el jugador tiene dos cargas de Escudo de Tierra",
        ["Color when player has 3 charges of Earth Shield."] = "Color cuando el jugador tiene tres cargas de Escudo de Tierra",
        ["Color when player has 4 charges of Earth Shield."] = "Color cuando el jugador tiene cuatro cargas de Escudo de Tierra",
        ["Color when player has 5 or more charges of Earth Shield."] = "Color cuando el jugador tiene cinco o más cargas de Escudo de Tierra",
        ["Color when player has two charges of grace."] = "Color cuando el jugador tiene dos cargas de Gracia",
        ["Color when player has three charges of grace."] = "Color cuando el jugador tiene tres cargas de Gracia",
        ["Threshold to activate color 2"] = "Umbral para activar color 2",
        ["Threshold to activate color 3"] = "Umbral para activar color 3",
        ["Color 2"] = "Color 2",
        ["Color 3"] = "Color 3",
        ["Color 4"] = "Color 4",
        ["Color 5"] = "Color 5",
        ["Color 6"] = "Color 6",
        ["Refresh frequency"] = "Frecuencia de actualización",
        ["Seconds between status refreshes"] = "Segundos entre actualizaciones de estado",
        ["Count Lifebloom as 1 HoT per stack"] = "Contar Flor de Vida como 1 HoT cada stack",
        ["Check, if you want each stack of Lifebloom to count as 1 HoT"]= "Activar, para que cada stack de Flor de Vida cuente como 1 HoT",
        ["Show HoT-Counter"] = "Mostrar Contador de HoTs",
        ["Check, if you want to see the total of HoTs behind the countdown of your HoT(i.e. 13-5)"]= "Marcar, para que aparezcan el total de HoTs detras de tu HoT(ej: 13-5)",
        ["Show Flash of Light - HoT"] = "Mostrar HoT - Destello de Luz",
        ["Check, if you want to see a countdown for your Flash of Light - HoT behind your Sacred Shield (i.e. 25-10)"] = "Activar, para ver una cuenta atras para tu Destello de Luz detras de tu Escudo Divino (ej: 25-10)",
    }
end)

L:RegisterTranslations("esMX", function()
    return {
        ["My HoTs"] = "Mis HoTs",
        ["Buff: Hot Count"] = "Buff: Contador de HoTs",
        ["Buff: My Earth Shield"] = "Buff: Mi Escudo de Tierra",
        ["Buff: My Gift of the Naaru"] = "Buff: Mi Regalo de los Naaru",
        ["Buff: My Renew"] = "Buff: Mi Renovar",
        ["Buff: My Rejuvenation"] = "Buff: Mi Rejuvenecimiento",
        ["Buff: My Regrowth"] = "Buff: Mi Recrecimiento",
        ["Buff: My Lifebloom"] = "Buff: Mi Flor de Vida",
        ["Buff: My Lifebloom Stack Colored"] = "Buff: Mi Flor de Vida Pintar Stack",
        ["Buff: My Wild Growth"] = "Buff: Mi Crecimiento Salvaje",
        ["Buff: My Sheath of Light"] = "Buff: Mi Vaina de Luz",
        ["Buff: My Sacred Shield"] = "Buff: Mi Escudo Sagrado",
        ["Buff: My Riptide"] = "Buff: Mi Mareas Vivas",
        ["Buff: My Earthliving"] = "Buff: Mi Arma de Vida Terrestre",
        ["Buff: My Flash of Light"] = "Buff: Mi Destello de Luz",
        ["Buff: My Prayer of Mending"] = "Buff: Mi Rezo de Alivio",
        ["Buff: My Beacon of Light"] = "Buff: Mi Señal de la Luz",
        ["Buff: My Grace Stack"] = "Buff: Mi Gracia Stack",
        ["Buff: My Grace Duration + Stack"] = "Buff: Mi Gracia Duración + Stack",
        ["Color when player has two charges of PoM."] = "Color cuando el jugador tiene dos cargas de Rezo de Alivio",
        ["Color when player has three charges of PoM."] = "Color cuando el jugador tiene tres cargas de Rezo de Alivio",
        ["Color when player has four charges of PoM."] = "Color cuando el jugador tiene cuatro cargas de Rezo de Alivio",
        ["Color when player has five charges of PoM."] = "Color cuando el jugador tiene cinco cargas de Rezo de Alivio",
        ["Color when player has six charges of PoM."] = "Color cuando el jugador tiene seis cargas de Rezo de Alivio",
        ["Color when player has 2 charges of Earth Shield."] = "Color cuando el jugador tiene dos cargas de Escudo de Tierra",
        ["Color when player has 3 charges of Earth Shield."] = "Color cuando el jugador tiene tres cargas de Escudo de Tierra",
        ["Color when player has 4 charges of Earth Shield."] = "Color cuando el jugador tiene cuatro cargas de Escudo de Tierra",
        ["Color when player has 5 or more charges of Earth Shield."] = "Color cuando el jugador tiene cinco o más cargas de Escudo de Tierra",
        ["Color when player has two charges of grace."] = "Color cuando el jugador tiene dos cargas de Gracia",
        ["Color when player has three charges of grace."] = "Color cuando el jugador tiene tres cargas de Gracia",
        ["Threshold to activate color 2"] = "Umbral para activar color 2",
        ["Threshold to activate color 3"] = "Umbral para activar color 3",
        ["Color 2"] = "Color 2",
        ["Color 3"] = "Color 3",
        ["Color 4"] = "Color 4",
        ["Color 5"] = "Color 5",
        ["Color 6"] = "Color 6",
        ["Refresh frequency"] = "Frecuencia de actualización",
        ["Seconds between status refreshes"] = "Segundos entre actualizaciones de estado",
        ["Count Lifebloom as 1 HoT per stack"] = "Contar Flor de Vida como 1 HoT cada stack",
        ["Check, if you want each stack of Lifebloom to count as 1 HoT"]= "Activar, para que cada stack de Flor de Vida cuente como 1 HoT",
        ["Show HoT-Counter"] = "Mostrar Contador de HoTs",
        ["Check, if you want to see the total of HoTs behind the countdown of your HoT(i.e. 13-5)"]= "Marcar, para que aparezcan el total de HoTs detras de tu HoT(ej: 13-5)",
        ["Show Flash of Light - HoT"] = "Mostrar HoT - Destello de Luz",
        ["Check, if you want to see a countdown for your Flash of Light - HoT behind your Sacred Shield (i.e. 25-10)"] = "Activar, para ver una cuenta atras para tu Destello de Luz detras de tu Escudo Divino (ej: 25-10)",
    }
end)

L:RegisterTranslations("frFR", function()
    return {
        ["My HoTs"] = "Mes HoTs",
        ["Buff: Hot Count"] = "Buff: Nombre de HoT",
        ["Buff: My Earth Shield"] = "Buff: Mon Bouclier de terre",
        ["Buff: My Gift of the Naaru"] = "Buff: Mon Don des naaru",
        ["Buff: My Renew"] = "Buff: Ma Rénovation", --need check
        ["Buff: My Rejuvenation"] = "Buff: Ma Récupération", --need check
        ["Buff: My Regrowth"] = "Buff: Mon Rétablissement", --need check
        ["Buff: My Lifebloom"] = "Buff: Ma Fleur de vie", --need check
        ["Buff: My Lifebloom Stack Colored"] = "Buff: Couleur de charge de Ma Fleur de vie", --need check
        ["Buff: My Wild Growth"] = "Buff: Ma Croissance sauvage", --need check
        ["Buff: My Sheath of Light"] = "Buff: Mon Fourreau de lumière", --need check
        ["Buff: My Sacred Shield"] = "Buff: Mon Bouclier saint", --need check
        ["Buff: My Riptide"] = "Buff: Mon Remous",
        ["Buff: My Earthliving"] = "Buff: Ma Viveterre",
        ["Buff: My Flash of Light"] = "Buff: Mon Eclair lumineux", --need check
        ["Buff: My Prayer of Mending"] = "Buff: Ma Prière de guérison", --need check
        ["Buff: My Beacon of Light"] = "Buff: Mon Guide de lumière", --need check
        ["Buff: My Grace Stack"] = "Buff: Charge de Ma Grâce", --need check
        ["Buff: My Grace Duration + Stack"] = "Buff: Durée + Charge de Ma Grâce", --need check
        ["Color when player has two charges of PoM."] = "Couleur avec 2 charges de Prière de guérison.", --need check
        ["Color when player has three charges of PoM."] = "Couleur avec 3 charges de Prière de guérison.", --need check
        ["Color when player has four charges of PoM."] = "Couleur avec 4 charges de Prière de guérison.", --need check
        ["Color when player has five charges of PoM."] = "Couleur avec 5 charges de Prière de guérison.", --need check
        ["Color when player has six charges of PoM."] = "Couleur avec 6 charges de Prière de guérison.", --need check
        ["Color when player has 2 charges of Earth Shield."] = "Couleur avec 2 charges de Bouclier de terre.",
        ["Color when player has 3 charges of Earth Shield."] = "Couleur avec 3 charges de Bouclier de terre.",
        ["Color when player has 4 charges of Earth Shield."] = "Couleur avec 4 charges de Bouclier de terre.",
        ["Color when player has 5 or more charges of Earth Shield."] = "Couleur avec 5 charges ou plus de Bouclier de terre.",
        ["Color when player has two charges of grace."] = "Couleur avec 2 charges de Grâce.", --need check
        ["Color when player has three charges of grace."] = "Couleur avec 3 charges de Grâce.", --need check
        ["Threshold to activate color 2"] = "Seuil d'activation couleur 2",
        ["Threshold to activate color 3"] = "Seuil d'activation couleur 3",
        ["Color 2"] = "Couleur 2",
        ["Color 3"] = "Couleur 3",
        ["Color 4"] = "Couleur 4",
        ["Color 5"] = "Couleur 5",
        ["Color 6"] = "Couleur 6",
        ["Refresh frequency"] = "Taux de rafraichissement",
        ["Seconds between status refreshes"] = "Secondes entre chaque rafraichissement",
        ["Count Lifebloom as 1 HoT per stack"] = "Compter Fleur de vie comme 1 HoT par charge", --need check
        ["Check, if you want each stack of Lifebloom to count as 1 HoT"]= "Cocher pour compter chaque charge de Fleur de vie comme 1 HoT", --need check
        ["Show HoT-Counter"] = "Afficher le compteur de HoT",
        ["Check, if you want to see the total of HoTs behind the countdown of your HoT(i.e. 13-5)"]= "Cocher pour afficher le total des HoTs derrière le compteur de vos HoT(i.e. 13-5)", --need check
        ["Show Flash of Light - HoT"] = "Afficher le Hot d'Eclair lumineux", --need check
        ["Check, if you want to see a countdown for your Flash of Light - HoT behind your Sacred Shield (i.e. 25-10)"] = "Cocher pour afficher un décompte des vos Hot d'Eclair lumineux derrière votre Bouclier saint (i.e. 25-10)", --need check
    }
end)

L:RegisterTranslations("zhCN", function()
	return {
		--[[
		["My HoTs"] = "我的 HoTs",
		--["Renew"] = "恢复",
		["Rejuvenation"] = "回春术",
		["Regrowth"] = "愈合",
		--["Lifebloom"] = "生命绽放",
		["Wild Growth"] = "野性成长",
		--["Sheath of Light"] = "圣光出鞘",
		--["Sacred Shield"] = "Sacred Shield", --need translation,
		["Riptide"] = "激流",
		["Earthliving"] = "大地生命",
		["Buff: Hot Count"] = "增益：Hot 统计",
		["Buff: My Renew"] = "增益：我的恢复",
		["Buff: My Rejuvenation"] = "增益：我的回春",
		["Buff: My Regrowth"] = "增益：我的愈合",
		["Buff: My Lifebloom"] = "增益：我的生命绽放",
		["Buff: Lifebloom Stack Colored"] = "增益：生命绽放叠加染色",
		["Buff: My Wild Growth"] = "增益：我的野性成长",
		["Buff: My Sheath of Light"] = "增益：我的圣光出鞘",
		["Buff: My Sacred Shield"] = "Buff: My Sacred Shield", --need translation
		["Buff: My Riptide"] = "增益：我的激流",
		["Buff: My Earthliving"] = "增益：我的大地生命",
		--["Prayer of Mending"] = "被治疗的玩家",
		["Beacon of Light"] = "圣光道标",
		["Grace Stack"] = "恩赐叠加",
		["Grace Duration + Stack"] = "恩赐持续及叠加",
		["Color when player has two charges of PoM."] = "当玩家拥有两层治疗效果的时候染色",
		["Color when player has three charges of PoM."] = "当玩家拥有三层治疗效果的时候染色",
		["Color when player has four charges of PoM."] = "当玩家拥有四层治疗效果的时候染色",
		["Color when player has five charges of PoM."] = "当玩家拥有五层治疗效果的时候染色",
		["Color when player has six charges of PoM."] = "当玩家拥有六层治疗效果的时候染色",
		["Color when player has two charges of grace."] = "当玩家拥有两层恩赐的时候染色",
		["Color when player has three charges of grace."] = "当玩家拥有三层恩赐的时候染色",
		["Threshold to activate color 2"] = "启动颜色2临界值",
		["Threshold to activate color 3"] = "启动颜色3临界值",
		["Color 2"] = "颜色2",
		["Color 3"] = "颜色3",
		["Color 4"] = "颜色4",
		["Color 5"] = "颜色5",
		["Color 6"] = "颜色6",
		["Refresh frequency"] = "刷新频率",
		["Seconds between status refreshes"] = "两次状态刷新间的时间",
		["Count Lifebloom as 1 HoT per stack"] = "每层生命绽放统计为1Hot",
		["Check, if you want each stack of Lifebloom to count as 1 HoT"]= "勾选后,每层生命绽放将作为1个Hot来统计",
		["Show HoT-Counter"] = "显示Hot计数器",
		["Check, if you want to see the total of HoTs behind the countdown of your HoT(i.e. 13-5)"]= "勾选后,在你的Hot冷却计数后可以看到总的Hot数量",
		]]
		["My HoTs"] = "我的 HoTs",
		["Buff: Hot Count"] = "增益：HoT数",
		["Buff: My Earth Shield"] = "增益：我的大地之盾",
		["Buff: My Gift of the Naaru"] = "增益：我的那鲁的祝福",
		["Buff: My Renew"] = "增益：我的恢复",
		["Buff: My Rejuvenation"] = "增益：我的回春术",
		["Buff: My Regrowth"] = "增益：我的愈合",
		["Buff: My Lifebloom"] = "增益：我的生命之花",
		["Buff: My Lifebloom Stack Colored"] = "增益：我的生命之花堆栈着色",
		["Buff: My Wild Growth"] = "增益：我的野性成长",
		["Buff: My Sheath of Light"] = "增益：我的圣光之鞘",
		["Buff: My Sacred Shield"] = "增益：我的崇圣护盾",
		["Buff: My Riptide"] = "增益：我的激流",
		["Buff: My Earthliving"] = "增益：我的大地生命",
		["Buff: My Flash of Light"] = "增益：我的圣光闪现",
		["Buff: My Prayer of Mending"] = "增益：我的愈合祷言",
		["Buff: My Beacon of Light"] = "增益：我的圣光信标",
		["Buff: My Grace Stack"] = "增益：我的恩典堆栈",
		["Buff: My Grace Duration + Stack"] = "增益：我的恩典持续及堆栈",
		["Color when player has two charges of PoM."] = "当玩家拥有两层治疗效果时着色",
		["Color when player has three charges of PoM."] = "当玩家拥有三层治疗效果时着色",
		["Color when player has four charges of PoM."] = "当玩家拥有四层治疗效果时着色",
		["Color when player has five charges of PoM."] = "当玩家拥有五层治疗效果时着色",
		["Color when player has six charges of PoM."] = "当玩家拥有六层治疗效果时着色",
		["Color when player has 2 charges of Earth Shield."] = "当玩家拥有两层大地之盾时着色",
		["Color when player has 3 charges of Earth Shield."] = "当玩家拥有三层大地之盾时着色",
		["Color when player has 4 charges of Earth Shield."] = "当玩家拥有四层大地之盾时着色",
		["Color when player has 5 or more charges of Earth Shield."] = "当玩家拥有五层大地之盾或更多时着色",
		["Color when player has two charges of grace."] = "当玩家拥有两层恩典时着色",
		["Color when player has three charges of grace."] = "当玩家拥有三层恩典时着色",
		["Threshold to activate color 2"] = "启动2阶段颜色",
		["Threshold to activate color 3"] = "启动3阶段颜色",
		["Color 2"] = "颜色2",
		["Color 3"] = "颜色3",
		["Color 4"] = "颜色4",
		["Color 5"] = "颜色5",
		["Color 6"] = "颜色6",
		["Refresh frequency"] = "刷新频率",
		["Seconds between status refreshes"] = "两次状态刷新的间隔时间",
		["Count Lifebloom as 1 HoT per stack"] = "每层生命之花统计为1HoT",
		["Check, if you want each stack of Lifebloom to count as 1 HoT"]= "勾选后，每层生命之花将作为1个Hot来统计",
		["Show HoT-Counter"] = "显示HoT计数器",
		["Check, if you want to see the total of HoTs behind the countdown of your HoT(i.e. 13-5)"]= "勾选后，在总HoT数后方可看到你施放的HoT数 (例.13-5)",
		["Show Flash of Light - HoT"] = "显示圣光闪现的HoT",
		["Check, if you want to see a countdown for your Flash of Light - HoT behind your Sacred Shield (i.e. 25-10)"] = "勾选后，在崇圣护盾后方可看见你的圣光闪现的HoT数 (例.25-10)",
	}
end)

L:RegisterTranslations("zhTW", function()
	return {
		["My HoTs"] = "我的 HoTs",
		["Buff: Hot Count"] = "增益：HoT數",
		["Buff: My Earth Shield"] = "增益：我的大地之盾",
		["Buff: My Gift of the Naaru"] = "增益：我的那魯的祝福",
		["Buff: My Renew"] = "增益：我的恢復",
		["Buff: My Rejuvenation"] = "增益：我的回春術",
		["Buff: My Regrowth"] = "增益：我的癒合",
		["Buff: My Lifebloom"] = "增益：我的生命之花",
		["Buff: My Lifebloom Stack Colored"] = "增益：我的生命之花堆疊着色",
		["Buff: My Wild Growth"] = "增益：我的野性成長",
		["Buff: My Sheath of Light"] = "增益：我的聖光之鞘",
		["Buff: My Sacred Shield"] = "增益：我的崇聖護盾",
		["Buff: My Riptide"] = "增益：我的激流",
		["Buff: My Earthliving"] = "增益：我的大地生命",
		["Buff: My Flash of Light"] = "增益：我的聖光閃現",
		["Buff: My Prayer of Mending"] = "增益：我的癒合禱言",
		["Buff: My Beacon of Light"] = "增益：我的聖光信標",
		["Buff: My Grace Stack"] = "增益：我的恩典堆疊",
		["Buff: My Grace Duration + Stack"] = "增益：我的恩典持續及堆疊",
		["Color when player has two charges of PoM."] = "當玩家擁有兩層治療效果時着色",
		["Color when player has three charges of PoM."] = "當玩家擁有三層治療效果時着色",
		["Color when player has four charges of PoM."] = "當玩家擁有四層治療效果時着色",
		["Color when player has five charges of PoM."] = "當玩家擁有五層治療效果時着色",
		["Color when player has six charges of PoM."] = "當玩家擁有六層治療效果時着色",
		["Color when player has 2 charges of Earth Shield."] = "當玩家擁有兩層大地之盾時着色",
		["Color when player has 3 charges of Earth Shield."] = "當玩家擁有三層大地之盾時着色",
		["Color when player has 4 charges of Earth Shield."] = "當玩家擁有四層大地之盾時着色",
		["Color when player has 5 or more charges of Earth Shield."] = "當玩家擁有五層大地之盾或更多時着色",
		["Color when player has two charges of grace."] = "當玩家擁有兩層恩典時着色",
		["Color when player has three charges of grace."] = "當玩家擁有三層恩典時着色",
		["Threshold to activate color 2"] = "啟動2階段顏色",
		["Threshold to activate color 3"] = "啟動3階段顏色",
		["Color 2"] = "顏色2",
		["Color 3"] = "顏色3",
		["Color 4"] = "顏色4",
		["Color 5"] = "顏色5",
		["Color 6"] = "顏色6",
		["Refresh frequency"] = "刷新頻率",
		["Seconds between status refreshes"] = "兩次狀態刷新的間隔時間",
		["Count Lifebloom as 1 HoT per stack"] = "每層生命之花統計為1HoT",
		["Check, if you want each stack of Lifebloom to count as 1 HoT"]= "勾選後，每層生命之花將作為1個Hot來統計",
		["Show HoT-Counter"] = "顯示HoT計數器",
		["Check, if you want to see the total of HoTs behind the countdown of your HoT(i.e. 13-5)"]= "勾選後，在總HoT數後方可看到你施放的HoT數 (例.13-5)",
		["Show Flash of Light - HoT"] = "顯示聖光閃現的HoT",
		["Check, if you want to see a countdown for your Flash of Light - HoT behind your Sacred Shield (i.e. 25-10)"] = "勾選後，在崇聖護盾後方可看見你的聖光閃現的HoT數 (例.25-10)",
	}
end)

L:RegisterTranslations("ruRU", function()
	return {
		["My HoTs"] = "Мои ХоТы",
		["Buff: Hot Count"] = "Бафф: количество хотов",
		["Buff: My Earth Shield"] = "Бафф: мой Щит земли",
		["Buff: My Gift of the Naaru"] = "Бафф: мой Дар наару",
		["Buff: My Renew"] = "Бафф: моё Обновление",
		["Buff: My Rejuvenation"] = "Бафф: моё Омоложение",
		["Buff: My Regrowth"] = "Бафф: моё Восстановление",
		["Buff: My Lifebloom"] = "Бафф: мой Жизнецвет",
		["Buff: My Lifebloom Stack Colored"] = "Бафф: окраска стаков жизнецвета",
		["Buff: My Wild Growth"] = "Бафф: мой Буйный рост",
		["Buff: My Sheath of Light"] = "Бафф: мой Покров света",
		["Buff: My Sacred Shield"] = "Бафф: мой Священный щит",
		["Buff: My Riptide"] = "Бафф: моя Быстрина",
		["Buff: My Earthliving"] = "Бафф: моя Жизнь земли",
		["Buff: My Flash of Light"] = "Бафф: моя Вспышка света",
		["Buff: My Prayer of Mending"] = "Бафф: моя Молитва восстановления",
		["Buff: My Beacon of Light"] = "Бафф: моя Частица света",
		["Buff: My Grace Stack"] = "Бафф: стаки Милости",
		["Buff: My Grace Duration + Stack"] = "Бафф: длительность Милости + стаки",
		["Color when player has two charges of PoM."] = "Цвет 2 стаков молитвы восстановления",
		["Color when player has three charges of PoM."] = "Цвет 3 стаков молитвы восстановления",
		["Color when player has four charges of PoM."] = "Цвет 4 стаков молитвы восстановления",
		["Color when player has five charges of PoM."] = "Цвет 5 стаков молитвы восстановления",
		["Color when player has six charges of PoM."] = "Цвет 6 стаков молитвы восстановления",
		["Color when player has 2 charges of Earth Shield."] = "Цвет 2 зарядов щита земли",
		["Color when player has 3 charges of Earth Shield."] = "Цвет 3 зарядов щита земли",
		["Color when player has 4 charges of Earth Shield."] = "Цвет 4 зарядов щита земли",
		["Color when player has 5 or more charges of Earth Shield."] = "Цвет 5 и более зарядов щита земли",
		["Color when player has two charges of grace."] = "Цвет 2 стаков милости",
		["Color when player has three charges of grace."] = "Цвет 3 стаков милости",
		["Threshold to activate color 2"] = "Порог для цвета №2",
		["Threshold to activate color 3"] = "Порог для цвета №3",
		["Color 2"] = "Цвет №2",
		["Color 3"] = "Цвет №3",
		["Color 4"] = "Цвет №4",
		["Color 5"] = "Цвет №5",
		["Color 6"] = "Цвет №6",
		["Refresh frequency"] = "Частота обновления",
		["Seconds between status refreshes"] = "Количество секунд между обновлением статуса",
		["Count Lifebloom as 1 HoT per stack"] = "Считать каждый стак жизнецвета как 1 хот",
		["Check, if you want each stack of Lifebloom to count as 1 HoT"]= "Каждый стак жизнецвета будет считаться за 1 хот",
		["Show HoT-Counter"] = "Показывать количество хотов",
		["Check, if you want to see the total of HoTs behind the countdown of your HoT(i.e. 13-5)"]= "Отметьте, если вы хотите, чтобы отображалось общее количество ваших хотов (например, 13-5).",
		["Show Flash of Light - HoT"] = "Показывать Вспышку света, как хот",
		["Check, if you want to see a countdown for your Flash of Light - HoT behind your Sacred Shield (i.e. 25-10)"] = "Время действия вашей Вспышки света (хота) будет отображаться после Священного щита (например, 25-10)",
	}
end)
