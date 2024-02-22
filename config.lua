Config = {}

Config.KeyRequired = true

Config.Delays = {
	WeedProcessing = 500 * 10,
	MethProcessing = 500 * 10,
	CokeProcessing = 500 * 10,
	lsdProcessing = 500 * 10,
	HeroinProcessing = 500 * 10,
	thionylchlorideProcessing = 500 * 10,
	MoneyPrinting = 500 * 10,
}

Config.CircleZones = {
	WeedField = {coords = vector3(297.54, 4319.71, 47.30), name = ('Weed Farm'), radius = 100.0},
	WeedProcessing = {coords = vector3(1038.33, -3204.44, -38.17), name = ('Weed Process'), radius = 100.0},
	
	MethProcessing = {coords = vector3(978.17, -147.98, -48.53), name = ('Meth Process'), radius = 20.0},
	MethTemp = {coords = vector3(982.56, -145.59, -49.0), name = ('Meth Temperature'), radius = 20.0},
	MethBag = {coords = vector3(987.81, -140.43, -49.0), name = ('Meth Bagging'), radius = 20.0},

	HydrochloricAcidFarm = {coords = vector3(1989.96, 494.11, 162.61), name = ('Hydrochloric Acid'), radius = 100.0},
	SulfuricAcidFarm = {coords = vector3(1667.59, 6642.64, 10.45), name = ('Sulfuric Acid'), radius = 100.0},
	SodiumHydroxideFarm = {coords = vector3(-1702.44, 4941.50, 10.83), name = ('Sodium Hydroxide'), radius = 100.0},
	
	ChemicalsField = {coords = vector3(2825.56, 1773.98, 10.21), name = ('Chemicals'), radius = 20.0},
	ChemicalsConvertionMenu = {coords = vector3(3536.71, 3662.63, 28.12), name = ('Chemicals Process'), radius = 100.0},

	CokeField = {coords = vector3(-2187.86, 5181.50, 16.16), name = ('Coke'), radius = 100.0},
	CokeProcessing = {coords = vector3(1087.14, -3195.31, -38.99), name = ('Coke Process'), radius = 20.0}, 
	CokePowder = {coords = vector3(1092.9, -3196.65, -38.99), name = ('Powder Cutting'), radius = 20.0},--vector3(1092.9, -3196.65, -38.99)
	CokeBrick = {coords = vector3(1099.57, -3194.35, -38.99), name = ('Brick Up Packages'), radius = 20.0},--vector3(1099.57, -3194.35, -38.99)
	
	HeroinField = {coords = vector3(-2341.50, 70.34, 126.42), name = ('Heroin'), radius = 30.0},
	HeroinProcessing = {coords = vector3(64.79, 3685.00, 39.83), name = ('Heroin Process'), radius = 100.0},

	lsdProcessing = {coords = vector3(2503.84, -428.11, 92.99), name = ('LSD process'), radius = 100.0},

	thionylchlorideProcessing = {coords = vector3(-679.59, 5800.46, 17.33), name = ('Thi Clo Process'), radius = 100.0},

	moneysheet = {coords = vector3(1133.28, -3198.26, -38.92), name = ('Print Sheet'), radius = 100.0},
	cutsheet = {coords = vector3(1126.09, -3197.90, -39.05), name = ('Cut Sheet'), radius = 100.0},
}


Config.MethLab = {
	["enter"] = {
        coords = vector4(-116.92, 381.71, -43.41, 32),
    },
    ["exit"] = {
        coords = vector4(-116.92, 381.71, -43.41, 32),  --vector3(969.57, -147.07, -46.4)
    },
}

Config.CokeLab = {
	["enter"] = {
        coords = vector4(-116.92, 381.71, -43.41, 32), --vector3(813.21, -2398.69, 23.66)
    },
    ["exit"] = {
        coords = vector4(-116.92, 381.71, -43.41, 32), -- GTA DLC Biker Cocaine Lab -- vector3(1088.68, -3187.68, -38.99)
    },
}

Config.WeedLab = {
	["enter"] = {
		coords = vector4(-116.92, 381.71, -43.41, 32), 
    },
    ["exit"] = {
        coords = vector4(-116.92, 381.71, -43.41, 32), -- GTA DLC Weed Lab -- 
    },
}


--------------------------------
-- DRUG CONFIG AMOUNTS --
--------------------------------

--------------------------------
-- COKE PROCESSING AMOUNTS --
--------------------------------

Config.CokeProcessing = {
	CokeLeaf = 1, -- Amount of Leaf Needed to Process
	ProcessCokeLeaf = math.random(2,4), -- Amount of Coke Received
	-- Processing Small Bricks --
	Coke = 10, -- Amount of Coke Needed for Small Brick
	BakingSoda = 5, -- Amount of Baking Soda Needed for Small Brick
	SmallCokeBrick = math.random(1,1),
	-- Process Small Bricks Into Large Brick --
	SmallBrick = 4, -- Amount of Small Bricks Required
	LargeBrick = 1, -- Large Bricks Received
}

--------------------------------
-- METH PROCESSING AMOUNTS --
--------------------------------
Config.MethProcessing = {
	-- Chemical Processing --
	SulfAcid = 2, -- Amount of Sulfuric Acid Needed for Liquid Mix
	HydAcid = 2, -- Amount of Hydrochloric Acid Needed for Liquid Mix
	SodHyd = 2, -- Amount of Sodium Hydroxide Needed for Liquid Mix
	Meth = math.random(5,15), -- Amount of Meth Recevied From 1 Tray
}

--------------------------------
-- HEROIN PROCESSING AMOUNTS --
--------------------------------
Config.HeroinProcessing = {
	Poppy = 2 -- Amount of Poppy Required for 1 Heroin
}

--------------------------------
-- PRINTED MONEY AMOUNTS --
--------------------------------

Config.MoneyProcessing = {
	-- Processing Ink/Paper --
	Ink = 1, -- Ink Needed
	CottonPaper = 1, -- Cottonpaper Needed
	PrintSheetOfPrintedBills = 1,
	-- Process Sheets of Bills into Cash --
	SheetOfPrintedBills = 1, -- Amount Sheets Needed
	Cash = 10000, -- Cash Received
}
