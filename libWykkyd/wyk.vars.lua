local toc, data = ...
local id = toc.identifier

wyk.vars.Gadgets = nil
wyk.vars.kAlert = nil

wyk.vars.loadedCalling = nil

wyk.vars.RarityColors = {
	sellable =		{ r = 0.34375, g = 0.34375, b = 0.34375 },
	common =		{ r =    0.98, g =    0.98, b =    0.98 },
	uncommon =		{ r =     0.0, g =   0.797, b =     0.0 },
	rare =			{ r =   0.148, g =   0.496, b =   0.977 },
	epic =			{ r =   0.676, g =   0.281, b =    0.98 },
	quest =			{ r =     1.0, g =     1.0, b =     0.0 },
	relic =			{ r =     1.0, g =     0.5, b =     0.0 },
	transcendent =	{ r =     1.0, g =     0.0, b =     0.0 },
}

wyk.vars.Images = {
    sizes = {
        equip = 46,
        classicon = 48,
        border = 64,
    },
    other = {
        cross = { src = id, file = "resource/btnCross.png" },
        closeBtn = { src = id, file = "resource/closeBtn.png" },
        closeBtnIN = { src = id, file = "resource/closeBtn_in.png" },
        unignoreBtn = { src = id, file = "resource/unignoreBtn.png" },
        unignoreBtnIN = { src = id, file = "resource/unignoreBtn_in.png" },
        gadgetsBtn = { src = id, file = "resource/btnGadgets_in.png" },
        lock = { src = id, file = "resource/lock_silver.png" },
    },
    borders = {
        dark = { src = id, file = "resource/buttonDark.png" },
        gray = { src = id, file = "resource/buttonGray.png" },
        air = { src = id, file = "resource/buttonAir.png" },
        death = { src = id, file = "resource/buttonDeath.png" },
        earth = { src = id, file = "resource/buttonEarth.png" },
        fire = { src = id, file = "resource/buttonFire.png" },
        life = { src = id, file = "resource/buttonLife.png" },
        water = { src = id, file = "resource/buttonWater.png" },
        default = { src = "Rift", file = "icon_border.dds" },
        disabled = { src = "Rift", file = "icon_border_disabled.dds" },
        epic = { src = "Rift", file = "icon_border_epic.dds" },
        quest = { src = "Rift", file = "icon_border_quest.dds" },
        rare = { src = "Rift", file = "icon_border_rare.dds" },
        relic = { src = "Rift", file = "icon_border_relic.dds" },
        uncommon = { src = "Rift", file = "icon_border_uncommon.dds" },
    },
    slots = {
        belt = { src = id, file = "resource/equipEmptybelt.png" },
        chest = { src = id, file = "resource/equipEmptychest.png" },
        cape = { src = "Rift", file = "CharacterSheet_I243.dds" },
        feet = { src = id, file = "resource/equipEmptyfeet.png" },
        focus = { src = id, file = "resource/equipEmptyfocus.png" },
        gloves = { src = id, file = "resource/equipEmptygloves.png" },
        handmain = { src = id, file = "resource/equipEmptyhandmain.png" },
        handoff = { src = id, file = "resource/equipEmptyhandoff.png" },
        helmet = { src = id, file = "resource/equipEmptyhelmet.png" },
        legs = { src = id, file = "resource/equipEmptylegs.png" },
        neck = { src = id, file = "resource/equipEmptyneck.png" },
        ranged = { src = id, file = "resource/equipEmptyranged.png" },
        ring1 = { src = id, file = "resource/equipEmptyring1.png" },
        ring2 = { src = id, file = "resource/equipEmptyring2.png" },
        seal = { src = "Rift", file = "CharacterSheet_I23D.dds" },
        shoulders = { src = id, file = "resource/equipEmptyshoulders.png" },
        synergy = { src = id, file = "resource/equipEmptysynergy.png" },
        trinket = { src = id, file = "resource/equipEmptytrinket.png" },
    },
    classes = {
        cleric = {
            warden = { src = id, file = "resource/cleric1.png" },
            druid = { src = id, file = "resource/cleric2.png" },
            inquisitor = { src = id, file = "resource/cleric3.png" },
            cabalist = { src = id, file = "resource/cleric4.png" },
            purifier = { src = id, file = "resource/cleric5.png" },
            justicar = { src = id, file = "resource/cleric6.png" },
            shaman = { src = id, file = "resource/cleric7.png" },
            sentinel = { src = id, file = "resource/cleric8.png" },
			defiler = { src = id, file = "resource/cleric81.png" },
            templar = { src = id, file = "resource/cleric99.png" },
        },
        mage = {
            archon = { src = id, file = "resource/mage1.png" },
            dominator = { src = id, file = "resource/mage2.png" },
            chloromancer = { src = id, file = "resource/mage3.png" },
            elementalist = { src = id, file = "resource/mage4.png" },
            warlock = { src = id, file = "resource/mage5.png" },
            necromancer = { src = id, file = "resource/mage6.png" },
            pyromancer = { src = id, file = "resource/mage7.png" },
            stormcaller = { src = id, file = "resource/mage8.png" },
			harbinger = { src = id, file = "resource/mage81.png" },
            archmage = { src = id, file = "resource/mage99.png" },
        },
        rogue = {
            assassin = { src = id, file = "resource/rogue1.png" },
            bard = { src = id, file = "resource/rogue2.png" },
            bladedancer = { src = id, file = "resource/rogue3.png" },
            nightblade = { src = id, file = "resource/rogue4.png" },
            riftstalker = { src = id, file = "resource/rogue5.png" },
            saboteur = { src = id, file = "resource/rogue6.png" },
            marksman = { src = id, file = "resource/rogue7.png" },
            ranger = { src = id, file = "resource/rogue8.png" },
			tactician = { src = id, file = "resource/rogue81.png" },
            infiltrator = { src = id, file = "resource/rogue99.png" },
        },
        warrior = {
            beastmaster = { src = id, file = "resource/warrior1.png" },
            champion = { src = id, file = "resource/warrior2.png" },
            warlord = { src = id, file = "resource/warrior3.png" },
            paladin = { src = id, file = "resource/warrior4.png" },
            paragon = { src = id, file = "resource/warrior5.png" },
            reaver = { src = id, file = "resource/warrior6.png" },
            riftblade = { src = id, file = "resource/warrior7.png" },
            voidknight = { src = id, file = "resource/warrior8.png" },
			tempest = { src = id, file = "resource/warrior81.png" },
            vindicator = { src = id, file = "resource/warrior99.png" },
        },
    }
}

wyk.vars.ParsableSlots = {
    "seqp",
    "si01",
    "si02",
    "si03",
    "si04",
    "si05",
    "sw01",
    "sw02",
    "sw03",
    "sw04",
    "sw05",
}

wyk.vars.eqpSlots = {
    ring1 = "seqp.rn1",
    ring2 = "seqp.rn2",
    belt = "seqp.blt",
    neck = "seqp.nck",
    helmet = "seqp.hlm",
    trinket = "seqp.tkt",
    chest = "seqp.chs",
    cape = "seqp.cpe",
    focus = "seqp.fcs",
    handoff = "seqp.hof",
    legs = "seqp.lgs",
    shoulders = "seqp.shl",
    synergy = "seqp.syn",
    ranged = "seqp.rng",
    feet = "seqp.fet",
    handmain = "seqp.hmn",
    gloves = "seqp.glv",
    seal = "seqp.sel",
}

wyk.vars.eqpSlotDisplaynames = {
    ring1 = "Ring",
    ring2 = "Ring",
    belt = "Belt",
    neck = "Neck",
    helmet = "Helmet",
    trinket = "Trinket",
    chest = "Chest",
    cape = "Cape",
    focus = "Planar Focus",
    handoff = "Off-Hand",
    legs = "Legs",
    shoulders = "Shoulders",
    synergy = "Synergy Crysal",
    ranged = "Ranged Weapon",
    feet = "Feet",
    handmain = "Main-Hand",
    gloves = "Gloves",
    seal = "Seal",
}

wyk.vars.eqpStats = { 
    armor = { stat = "armor", delimiter = ": ", post = "", display = "Armor" }, 
    block = { stat = "block", delimiter = " +", post = "", display = "Block" }, 
    critAttack = { stat = "critAttack", delimiter = " +", post = "", display = "Physical Crit" }, 
    critSpell = { stat = "critSpell", delimiter = " +", post = "", display = "Spell Crit" }, 
    dexterity = { stat = "dexterity", delimiter = " +", post = "", display = "Dexterity" }, 
    dodge = { stat = "dodge", delimiter = " +", post = "", display = "Dodge" }, 
    endurance = { stat = "endurance", delimiter = " +", post = "", display = "Endurance" }, 
    energyMax = { stat = "energyMax", delimiter = " +", post = "", display = "energyMax" }, 
    energyRegen = { stat = "energyRegen", delimiter = " +", post = "", display = "energyRegen" }, 
    focus = { stat = "focus", delimiter = " +", post = "", display = "Focus" }, 
    hit = { stat = "hit", delimiter = " +", post = "", display = "Hit" }, 
    intelligence = { stat = "intelligence", delimiter = " +", post = "", display = "Intelligence" }, 
    manaMax = { stat = "manaMax", delimiter = " +", post = "", display = "manaMax" }, 
    manaRegen = { stat = "manaRegen", delimiter = " +", post = "", display = "manaRegen" }, 
    movement = { stat = "movement", delimiter = " ", post = "%", display = "Movement Rate" }, 
    parry = { stat = "parry", delimiter = " +", post = "", display = "Parry" }, 
    powerAttack = { stat = "powerAttack", delimiter = " +", post = "", display = "Attack Power" }, 
    powerMax = { stat = "powerMax", delimiter = " +", post = "", display = "powerMax" }, 
    powerRegen = { stat = "powerRegen", delimiter = " +", post = "", display = "powerRegen" }, 
    powerSpell = { stat = "powerSpell", delimiter = " +", post = "", display = "Spell Power" }, 
    resistAll = { stat = "resistAll", delimiter = " +", post = "", display = "Resist All" }, 
    resistAir = { stat = "resistAir", delimiter = " +", post = "", display = "Air" }, 
    resistDeath = { stat = "resistDeath", delimiter = " +", post = "", display = "Death" }, 
    resistEarth = { stat = "resistEarth", delimiter = " +", post = "", display = "Earth" }, 
    resistFire = { stat = "resistFire", delimiter = " +", post = "", display = "Fire" }, 
    resistLife = { stat = "resistLife", delimiter = " +", post = "", display = "Life" }, 
    resistWater = { stat = "resistWater", delimiter = " +", post = "", display = "Water" }, 
    stealth = { stat = "stealth", delimiter = " +", post = "", display = "Stealth" }, 
    stealthDetect = { stat = "stealthDetect", delimiter = " +", post = "", display = "Stealth Detection" }, 
    strength = { stat = "strength", delimiter = " +", post = "", display = "Strength" }, 
    wisdom = { stat = "wisdom", delimiter = " +", post = "", display = "Wisdom" }, 
    xp = { stat = "xp", delimiter = " ", post = "%", display = "Experience Bonus" }, 
    valor = { stat = "valor", delimiter = " +", post = "", display = "Valor" }, 
    vengeance = { stat = "vengeance", delimiter = " +", post = "", display = "Vengeance" }, 
    deflect = { stat = "deflect", delimiter = " +", post = "", display = "Deflect" }, 
}

wyk.vars.wpnStats = { 
    damageDelay = { stat = "damageDelay", delimiter = nil, post = nil, display = nil }, 
    damageMax = { stat = "damageMax", delimiter = nil, post = nil, display = nil }, 
    damageMin = { stat = "damageMin", delimiter = nil, post = nil, display = nil }, 
    damageType = { stat = "damageType", delimiter = nil, post = nil, display = nil }, 
}

wyk.vars.displayStats = {
    detail1 = { stat = "dps", addbr = true }, 
    detail2 = { stat = "armor", addbr = false }, 
    detail3 = { stat = "strength", addbr = false }, 
    detail4 = { stat = "intelligence", addbr = false }, 
    detail5 = { stat = "wisdom", addbr = false }, 
    detail6 = { stat = "dexterity", addbr = false }, 
    detail7 = { stat = "endurance", addbr = false }, 
    detail8 = { stat = "block", addbr = false },  
    detail9 = { stat = "deflect", addbr = false }, 
    detail10 = { stat = "dodge", addbr = false }, 
    detail11 = { stat = "parry", addbr = false }, 
    detail12 = { stat = "powerAttack", addbr = false }, 
    detail13 = { stat = "powerSpell", addbr = false }, 
    detail14 = { stat = "critAttack", addbr = false }, 
    detail15 = { stat = "critSpell", addbr = false }, 
    detail16 = { stat = "focus", addbr = false }, 
    detail17 = { stat = "hit", addbr = false },  
    detail18 = { stat = "valor", addbr = false },  
    detail19 = { stat = "vengeance", addbr = false },  
    detail20 = { stat = "resistAll", addbr = false }, 
    detail21 = { stat = "resistLife", addbr = false }, 
    detail22 = { stat = "resistDeath", addbr = false }, 
    detail23 = { stat = "resistFire", addbr = false }, 
    detail24 = { stat = "resistWater", addbr = false },
    detail25 = { stat = "resistEarth", addbr = false },  
    detail26 = { stat = "resistAir", addbr = false }, 
    detail27 = { stat = "stealth", addbr = false }, 
    detail28 = { stat = "stealthDetect", addbr = false }, 
    detail29 = { stat = "energyMax", addbr = false }, 
    detail30 = { stat = "energyRegen", addbr = false }, 
    detail31 = { stat = "manaMax", addbr = false }, 
    detail32 = { stat = "manaRegen", addbr = false }, 
    detail33 = { stat = "powerMax", addbr = false }, 
    detail34 = { stat = "powerRegen", addbr = false }, 
    detail35 = { stat = "movement", addbr = false },
    detail36 = { stat = "xp", addbr = false }, 
}

wyk.vars.displayStatCount = 35
wyk.vars.usrCallingIcons = nil
wyk.vars.usrCallingIconCount = 0

wyk.vars.Icons = {}
wyk.vars.IconCount = 0



