# LoadedGuns Advanced Drug Processing
Currently I use this script personally alongside LionHearts QB-Labs for their Door Functions Only! I will be integrating the code into my script soon!

# Chemicals Preview
![image](https://user-images.githubusercontent.com/82112471/165860380-861eddc3-8548-442d-b483-2afd311970ad.png)

# Coke Preview
![image](https://user-images.githubusercontent.com/82112471/165860461-66fb9e25-d507-4663-833b-dc658985276a.png)

# Hydrochloric Acid Preview
![image](https://user-images.githubusercontent.com/82112471/165860628-45a4959f-e795-44f5-909f-fcbeca8d2cc0.png)

# Sodium Hydroxide Preview
![image](https://user-images.githubusercontent.com/82112471/165860272-8461de69-562b-47a2-9541-21e20d005175.png)

# Slufuric Acid Preview
![image](https://user-images.githubusercontent.com/82112471/165860175-93000475-6432-42cd-ab3c-387a98c4cbad.png)

# Weed Preview
![image](https://user-images.githubusercontent.com/82112471/165861162-cf19f312-92bb-4241-86a4-9cc07720773d.png)

# Heroin Preview
![image](https://user-images.githubusercontent.com/82112471/165862181-2c641fee-15bb-46d8-8e65-f43aa8d9546b.png)

# LSD Preview
Coming soon...

# Meth Preview
https://streamable.com/0pcjlt

# Add to qb-core > shared.lua

```
    --LG Drug Processing
    ["wet_weed"] 		 	 	 	 = {["name"] = "wet_weed",           			["label"] = "Moist Weed",	 			["weight"] = 3000, 		["type"] = "item", 		["image"] = "wet_weed.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Wet weed that needs to be treated!"},
    ["coke"] 		 	 	 	     = {["name"] = "coke",           				["label"] = "Cocaine", 					["weight"] = 100,		["type"] = "item", 		["image"] = "coke.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Processed cocaine"},
    ["coca_leaf"] 		 	 	 	 = {["name"] = "coca_leaf",           			["label"] = "Cocaine leaves",	 		["weight"] = 1500,		["type"] = "item", 		["image"] = "coca_leaf.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Cocaine leaves that must be processed !"},
    ["cannabis"] 			 		 = {["name"] = "cannabis", 						["label"] = "Cannabis", 				["weight"] = 2500, 		["type"] = "item", 		["image"] = "cannabis.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Uncured cannabis"},
    ["marijuana"] 			 		 = {["name"] = "marijuana", 					["label"] = "Marijuana", 				["weight"] = 500,		["type"] = "item", 		["image"] = "marijuana.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Some fine smelling buds."},
    ["chemicals"] 		 	 	 	 = {["name"] = "chemicals",           			["label"] = "Chemicals",	 			["weight"] = 1500, 		["type"] = "item", 		["image"] = "chemicals.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Chemicals, handle with care..."},
    ["poppyresin"] 		 	 	 	 = {["name"] = "poppyresin",           			["label"] = "Poppy resin",	 			["weight"] = 2000, 		["type"] = "item", 		["image"] = "poppyresin.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "It sticks to your fingers when you handle it."},
    ["heroin"] 		 	 	 	     = {["name"] = "heroin",           				["label"] = "Heroin",	 				["weight"] = 500, 		["type"] = "item", 		["image"] = "heroin.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Really addictive depressant..."},
    ["lsa"] 		 	 	 	     = {["name"] = "lsa",           				["label"] = "LSA",	 					["weight"] = 500, 		["type"] = "item", 		["image"] = "lsa.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Almost ready to party..."},
    ["lsd"] 		 	 	 	     = {["name"] = "lsd",           				["label"] = "LSD",	 					["weight"] = 500, 		["type"] = "item", 		["image"] = "lsd.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Lets get this party started!"},
    ["meth"] 		 	 	 	     = {["name"] = "meth",           				["label"] = "Meth",	 					["weight"] = 500, 		["type"] = "item", 		["image"] = "meth.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Really addictive stimulant..."},
    ["sodium_hydroxide"] 			 = {["name"] = "sodium_hydroxide", 				["label"] = "Sodium Hydroxide", 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "sodium_hydroxide.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Chemicals, handle with care!"},
    ["hydrochloric_acid"] 		 	 = {["name"] = "hydrochloric_acid", 			["label"] = "Hydrochloric Acid",		["weight"] = 1500, 		["type"] = "item", 		["image"] = "hydrochloric_acid.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Chemicals, handle with care!"},
    ["sulfuric_acid"] 			     = {["name"] = "sulfuric_acid",           		["label"] = "Sulfuric Acid",	 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "sulfuric_acid.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Chemicals, handle with care!"},
    ["thionyl_chloride"] 		 	 = {["name"] = "thionyl_chloride",           	["label"] = "Thionyl Chloride",	 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "thionyl_chloride.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Chemicals, handle with care!"},
    ["liquidmix"] 		 	 	     = {["name"] = "liquidmix",           		    ["label"] = "Liquid Chem Mix",	 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "liquidmix.png", 		    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Chemicals, handle with care!"},
    ["bakingsoda"] 		 	 	     = {["name"] = "bakingsoda",           		    ["label"] = "Baking Soda",	 		    ["weight"] = 1500, 		["type"] = "item", 		["image"] = "bakingsoda.png", 		    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Household Baking Soda!"},
    ["chemicalvapor"] 		 	     = {["name"] = "chemicalvapor",           	    ["label"] = "Chemical Vapors",	 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "chemicalvapor.png", 	    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "High Pressure Chemical Vapors, Explosive!"},
    ["trimming_scissors"] 		 	 = {["name"] = "trimming_scissors",           	["label"] = "Trimming Scissors",	 	["weight"] = 1500, 		["type"] = "item", 		["image"] = "trimming_scissors.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Very Sharp Trimming Scissors"},
    ['methtray'] 					 = {['name'] = 'methtray', 						['label'] = 'Meth Tray', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'meth_tray.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'make some meth'},
    ['finescale'] 					 = {['name'] = 'finescale', 					['label'] = 'Fine Scale', 			    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'finescale.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Scale Used for Fine Powders and Materials.'},
    ['coke_small_brick'] 		 	 = {['name'] = 'coke_small_brick', 				['label'] = 'Coke Package', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'coke_small_brick.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Small package of cocaine, mostly used for deals and takes a lot of space'},
    ["methylamine"] 			 	 = {["name"] = "methylamine", 					["label"] = "Methylamine", 				["weight"] = 4000, 		["type"] = "item", 		["image"] = "methylamine.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A derivative of ammonia, but with one H atom replaced by a methyl group"},
    ["ecgonine"] 			 		 = {["name"] = "ecgonine", 						["label"] = "Ecgonine", 				["weight"] = 4000, 		["type"] = "item", 		["image"] = "ecgonine.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ecgonine (tropane derivative) is a tropane alkaloid"},
    ["cottonpaper"]                  = {["name"] = "cottonpaper",                   ["label"] = "Special Cotton Paper",     ["weight"] = 1000,      ["type"] = "item",      ["image"] = "cottonpaper.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Special Paper used to print Cash"},
    ["ink"]                          = {["name"] = "ink",                           ["label"] = "Special Ink",              ["weight"] = 1000,      ["type"] = "item",      ["image"] = "printerink.png",           ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ink used on printed cash"},
    ["sheetofprintedbills"]          = {["name"] = "sheetofprintedbills",           ["label"] = "Printed Bills",            ["weight"] = 1000,      ["type"] = "item",      ["image"] = "sheetofbills.png",         ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Sheet of Printed Bills"},
    ["empty_weed_bag"] 			     = {["name"] = "empty_weed_bag", 			    ["label"] = "Empty Ziploc baggies",		["weight"] = 100, 		["type"] = "item", 		["image"] = "empty-plastic-bag.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A small and empty plastic bag."},
    ["coke_brick"]                   = {["name"] = "coke_brick",                    ["label"] = "Coke Brick",               ["weight"] = 1000,      ["type"] = 'item',      ["image"] = 'coke_brick.png',           ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = 'Heavy package of cocaine, mostly used for deals and takes a lot of space'},
    ["cokebaggy"]                    = {["name"] = 'cokebaggy',                     ["label"] = 'Bag of Coke',              ["weight"] = 0,         ["type"] = 'item',      ["image"] = 'cocainebaggy.png',         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = 'To get happy real quick'},

```

# Add icon images

qb-inventory > html > images

# Dependencies
* [PolyZone](https://github.com/mkafrin/PolyZone)
* [qb-target](https://github.com/BerkieBb/qb-target)
* [qb-menu](https://github.com/qbcore-framework/qb-menu)
* [ps-ui](https://github.com/Project-Sloth/ps-ui)
* [Meth Lab IPL](https://github.com/Bob74/bob74_ipl/tree/master/dlc_tuner)

# Original Repo
https://github.com/DoPeMan17/esx_drugs
https://github.com/Project-Sloth/ps-drugprocessing
