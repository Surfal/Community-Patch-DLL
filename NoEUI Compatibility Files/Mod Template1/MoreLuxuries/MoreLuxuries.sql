UPDATE Resources
SET Happiness = '1'
WHERE Happiness = '4';

-- Temple -- Amber

UPDATE Language_en_US
SET Text = '+1 [ICON_CULTURE] Culture and +1 [ICON_GOLD] Gold from [ICON_RES_INCENSE] Incense, [ICON_RES_WINE] Wine and [ICON_RES_AMBER] Amber. Reduces [ICON_HAPPINESS_3] Religious Unrest.'
WHERE Tag = 'TXT_KEY_BUILDING_TEMPLE_HELP';

UPDATE Language_en_US
SET Text = '+1 [ICON_CULTURE] Culture and +1 [ICON_PEACE] Faith from [ICON_RES_INCENSE] Incense, [ICON_RES_WINE] Wine and [ICON_RES_AMBER] Amber. Reduces [ICON_HAPPINESS_3] Religious Unrest. +1 [ICON_PEACE] Faith for every 2 [ICON_CITIZEN] Citizens.'
WHERE Tag = 'TXT_KEY_BUILDING_BASILICA_HELP';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_TEMPLE', 'RESOURCE_AMBER' , 'YIELD_CULTURE' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_BASILICA', 'RESOURCE_AMBER' , 'YIELD_CULTURE' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_TEMPLE', 'RESOURCE_AMBER' , 'YIELD_GOLD' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_BASILICA', 'RESOURCE_AMBER' , 'YIELD_FAITH' , '1'
;

-- Amphitheater -- Lapis Lazuli

UPDATE Language_en_US
SET Text = '+1 [ICON_CULTURE] Culture and +1 [ICON_GOLD] Gold from [ICON_RES_DYE] Dye and [ICON_RES_LAPIS] Lapis Lazuli. +1 [ICON_CULTURE] Culture for every 6 [ICON_CITIZEN] Citizens in the City.'
WHERE Tag = 'TXT_KEY_BUILDING_AMPHITHEATER_HELP';

UPDATE Language_en_US
SET Text = 'The Amphitheater increases the [ICON_CULTURE] Culture of a city and grants +1 [ICON_CULTURE] Culture and +1 [ICON_GOLD] Gold to all nearby [ICON_RES_DYE] Dye and [ICON_RES_LAPIS] Lapis Lazuli resources, speeding the growth of the territory of the city and the acquisition of Social Policies.  Contains 1 slot for a Great Work of Writing.'
WHERE Tag = 'TXT_KEY_BUILDING_AMPHITHEATER_STRATEGY';

UPDATE Language_en_US
SET Text = 'Whenever you destroy an enemy unit, gain +5 [ICON_CULTURE] Culture in the City.[NEWLINE][NEWLINE] +1 [ICON_CULTURE] Culture, and +1 [ICON_CULTURE] Culture for every 5 [ICON_CITIZEN] Citizens in the city. +1 [ICON_CULTURE] Culture and +1 [ICON_GOLD] Gold on nearby [ICON_RES_DYE] Dye and [ICON_RES_LAPIS] Lapis Lazuli resources. [NEWLINE][NEWLINE]+2 [ICON_TOURISM] Tourism once you research Philosophy.'
WHERE Tag = 'TXT_KEY_BUILDING_ODEON_HELP';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_AMPHITHEATER', 'RESOURCE_LAPIS' , 'YIELD_CULTURE' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_AMPHITHEATER', 'RESOURCE_LAPIS' , 'YIELD_GOLD' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_ODEON', 'RESOURCE_LAPIS' , 'YIELD_CULTURE' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_ODEON', 'RESOURCE_LAPIS' , 'YIELD_GOLD' , '1'
;

-- Coffee/Tea/Tobacco -- Grocer (and Coffee House)

UPDATE Language_en_US
SET Text = 'Carries over 25% of [ICON_FOOD] Food after City growth (effect stacks with Aqueduct). +1 [ICON_GOLD] Gold and +1 [ICON_PRODUCTION] Production from [ICON_RES_TOBACCO] Tobacco, [ICON_RES_COFFEE] Coffee and [ICON_RES_TEA] Tea. Reduces [ICON_HAPPINESS_3] Poverty.[NEWLINE][NEWLINE]Requires an Aqueduct in the City.'
WHERE Tag = 'TXT_KEY_BUILDING_GROCER_HELP';

UPDATE Language_en_US
SET Text = '+1 [ICON_GOLD] Gold and +1 [ICON_PRODUCTION] Production from [ICON_RES_TOBACCO] Tobacco, [ICON_RES_COFFEE] Coffee and [ICON_RES_TEA] Tea. [NEWLINE][NEWLINE] +1 [ICON_FOOD] Food for every 2 [ICON_CITIZEN] Citizens in the City, and +1 [ICON_RESEARCH] for every 4 [ICON_CITIZEN] Citizens in the City. Carries over 33% of [ICON_FOOD] Food after City growth (effect stacks with Aqueduct). Reduces [ICON_HAPPINESS_3] Poverty.'
WHERE Tag = 'TXT_KEY_BUILDING_PAPER_MAKER_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '+25% [ICON_GREAT_PEOPLE] Great People generation in this City. +15% [ICON_PRODUCTION] Production when constructing Buildings. [NEWLINE][NEWLINE] +1 [ICON_GOLD] Gold and +1 [ICON_PRODUCTION] Production from [ICON_RES_TOBACCO] Tobacco, [ICON_RES_COFFEE] Coffee and [ICON_RES_TEA] Tea.'
WHERE Tag = 'TXT_KEY_BUILDING_COFFEE_HOUSE_HELP';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_GROCER', 'RESOURCE_TOBACCO' , 'YIELD_GOLD' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_GROCER', 'RESOURCE_COFFEE' , 'YIELD_GOLD' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_GROCER', 'RESOURCE_TEA' , 'YIELD_GOLD' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_GROCER', 'RESOURCE_TOBACCO' , 'YIELD_PRODUCTION' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_GROCER', 'RESOURCE_COFFEE' , 'YIELD_PRODUCTION' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_GROCER', 'RESOURCE_TEA' , 'YIELD_PRODUCTION' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_PAPER_MAKER', 'RESOURCE_TOBACCO' , 'YIELD_GOLD' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_PAPER_MAKER', 'RESOURCE_COFFEE' , 'YIELD_GOLD' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_PAPER_MAKER', 'RESOURCE_TEA' , 'YIELD_GOLD' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_PAPER_MAKER', 'RESOURCE_TOBACCO' , 'YIELD_PRODUCTION' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_PAPER_MAKER', 'RESOURCE_COFFEE' , 'YIELD_PRODUCTION' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_PAPER_MAKER', 'RESOURCE_TEA' , 'YIELD_PRODUCTION' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_COFFEE_HOUSE', 'RESOURCE_TOBACCO' , 'YIELD_GOLD' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_COFFEE_HOUSE', 'RESOURCE_COFFEE' , 'YIELD_GOLD' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_COFFEE_HOUSE', 'RESOURCE_TEA' , 'YIELD_GOLD' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_COFFEE_HOUSE', 'RESOURCE_TOBACCO' , 'YIELD_PRODUCTION' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_COFFEE_HOUSE', 'RESOURCE_COFFEE' , 'YIELD_PRODUCTION' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_COFFEE_HOUSE', 'RESOURCE_TEA' , 'YIELD_PRODUCTION' , '1';

-- Jade -- Stone Works

UPDATE Language_en_US
SET Text = 'Each source of [ICON_RES_MARBLE] Marble, [ICON_RES_STONE] Stone, [ICON_RES_SALT] Salt, and [ICON_RES_JADE] Jade worked by this City produces +2 [ICON_PRODUCTION] Production.[NEWLINE][NEWLINE]City must have at least one of these resources improved with a Quarry.'
WHERE Tag = 'TXT_KEY_BUILDING_STONE_WORKS_HELP';
	
UPDATE Language_en_US
SET Text = 'Stone Works can only be constructed in a city near an improved [ICON_RES_STONE] Stone, [ICON_RES_MARBLE] Marble, [ICON_RES_SALT] Salt, or [ICON_RES_JADE] Jade resource. Stone Works increase [ICON_PRODUCTION] Production.'
WHERE Tag = 'TXT_KEY_BUILDING_STONE_WORKS_STRATEGY';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_STONE_WORKS', 'RESOURCE_JADE' , 'YIELD_PRODUCTION' , '2';

INSERT INTO Building_LocalResourceOrs (BuildingType, ResourceType)
SELECT 'BUILDING_STONE_WORKS', 'RESOURCE_JADE';

-- Olives, Perfume -- Colosseum
UPDATE Language_en_US
SET Text = '+1 [ICON_TOURISM] Tourism. Reduces [ICON_HAPPINESS_3] Boredom slightly. Each source of [ICON_RES_PERFUME] Perfume and [ICON_RES_OLIVE] Olives worked by this City produces +1 [ICON_CULTURE] Culture and +1 [ICON_GOLD] Gold.'
WHERE Tag = 'TXT_KEY_BUILDING_COLOSSEUM_HELP';

UPDATE Language_en_US
SET Text = 'The Colosseum reduces Boredom in a city, grants additional Culture, and improves the Culture yield output of [ICON_RES_PERFUME] Perfume and [ICON_RES_OLIVE] Olives. Build these to combat Unhappiness from Boredom, and to increase your Culture.'
WHERE Tag = 'TXT_KEY_BUILDING_COLOSSEUM_STRATEGY';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_COLOSSEUM', 'RESOURCE_OLIVE' , 'YIELD_CULTURE' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_COLOSSEUM', 'RESOURCE_PERFUME' , 'YIELD_CULTURE' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_COLOSSEUM', 'RESOURCE_OLIVE' , 'YIELD_GOLD' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_COLOSSEUM', 'RESOURCE_PERFUME' , 'YIELD_GOLD' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_FLAVIAN_COLOSSEUM', 'RESOURCE_PERFUME' , 'YIELD_CULTURE' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_FLAVIAN_COLOSSEUM', 'RESOURCE_OLIVE' , 'YIELD_GOLD' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_FLAVIAN_COLOSSEUM', 'RESOURCE_OLIVE' , 'YIELD_CULTURE' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_FLAVIAN_COLOSSEUM', 'RESOURCE_PERFUME' , 'YIELD_GOLD' , '1';

UPDATE Language_en_US
SET Text = '+1 [ICON_TOURISM] Tourism. Reduces [ICON_HAPPINESS_3] Boredom slightly. Each source of [ICON_RES_PERFUME] Perfume and [ICON_RES_OLIVE] Olives worked by this City produces +1 [ICON_CULTURE] Culture and +1 [ICON_GOLD] Gold. [NEWLINE][NEWLINE]Whenever you destroy an enemy unit, produce +5 [ICON_GREAT_GENERAL] Great General points and +5 [ICON_GOLDEN_AGE] Golden Age points. [ICON_CITY_CONNECTED] City Connections produce +2% more [ICON_GOLD] Gold.'
WHERE Tag = 'TXT_KEY_BUILDING_FLAVIAN_COLOSSEUM_HELP';

UPDATE Language_en_US
SET Text = 'Unique Roman replacement for the Colosseum. Build the Arena to boost city Culture and Production, and to maximize your gain from the victories of your conquering armies. Every Arena slightly increases the Gold value of City Connections, thus allowing Rome to benefit from large, sprawling empires. Each source of [ICON_RES_PERFUME] Perfume and [ICON_RES_OLIVE] Olives worked by this City produces +1 [ICON_CULTURE] Culture and +1 [ICON_GOLD] Gold.'
WHERE Tag = 'TXT_KEY_BUILDING_FLAVIAN_COLOSSEUM_STRATEGY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

-- Coral -- Covered by Lighthouse


-- Monopoly Information
	
	UPDATE Resources
	SET IsMonopoly = 'true'
	WHERE Type = 'RESOURCE_AMBER';

	UPDATE Resources
	SET IsMonopoly = 'true'
	WHERE Type = 'RESOURCE_COFFEE';

	UPDATE Resources
	SET MonopolyHappiness = '3'
	WHERE Type = 'RESOURCE_COFFEE';

	UPDATE Resources
	SET IsMonopoly = 'true'
	WHERE Type = 'RESOURCE_CORAL';

	UPDATE Resources
	SET IsMonopoly = 'true'
	WHERE Type = 'RESOURCE_JADE';

	UPDATE Resources
	SET IsMonopoly = 'true'
	WHERE Type = 'RESOURCE_LAPIS';

	UPDATE Resources
	SET MonopolyGALength = '10'
	WHERE Type = 'RESOURCE_LAPIS';

	UPDATE Resources
	SET IsMonopoly = 'true'
	WHERE Type = 'RESOURCE_OLIVE';

	UPDATE Resources
	SET IsMonopoly = 'true'
	WHERE Type = 'RESOURCE_PERFUME';

	UPDATE Resources
	SET MonopolyHappiness = '3'
	WHERE Type = 'RESOURCE_PERFUME';

	UPDATE Resources
	SET IsMonopoly = 'true'
	WHERE Type = 'RESOURCE_TEA';

	UPDATE Resources
	SET IsMonopoly = 'true'
	WHERE Type = 'RESOURCE_TOBACCO';

	UPDATE Resources
	SET MonopolyHappiness = '3'
	WHERE Type = 'RESOURCE_TOBACCO';

	-- Text files for changes.

	-- Other Text
	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_HAPPINESS'
	WHERE MonopolyHappiness = 3;

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_GA_LENGTH'
	WHERE MonopolyGALength = 10;

	-- Yield Text
	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_PRODUCTION'
	WHERE Type = 'RESOURCE_TEA';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_GOLD'
	WHERE Type = 'RESOURCE_CORAL';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_SCIENCE'
	WHERE Type = 'RESOURCE_AMBER';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_CULTURE'
	WHERE Type = 'RESOURCE_JADE';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_FOOD'
	WHERE Type = 'RESOURCE_OLIVE';