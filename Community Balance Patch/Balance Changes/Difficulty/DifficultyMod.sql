
-- Difficulty Mod Value Indicators
-- 1 = King
-- 2 = Emperor
-- 3 = Immortal
-- 4 = Deity

-- Era bonus multiplier
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_GAME_DIFFICULTY_MULTIPLIER', '0'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='BALANCE_GLOBAL_DIFFICULTY_LEVEL' AND Value= 0 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_GAME_DIFFICULTY_MULTIPLIER', '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='BALANCE_GLOBAL_DIFFICULTY_LEVEL' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_GAME_DIFFICULTY_MULTIPLIER', '2'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='BALANCE_GLOBAL_DIFFICULTY_LEVEL' AND Value= 2 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_GAME_DIFFICULTY_MULTIPLIER', '3'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='BALANCE_GLOBAL_DIFFICULTY_LEVEL' AND Value= 3 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_GAME_DIFFICULTY_MULTIPLIER', '4'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='BALANCE_GLOBAL_DIFFICULTY_LEVEL' AND Value= 4 );


--Difficulties
DELETE FROM HandicapInfo_AIFreeTechs WHERE HandicapType IN ('HANDICAP_KING' , 'HANDICAP_EMPEROR' , 'HANDICAP_IMMORTAL', 'HANDICAP_DEITY')
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BALANCE_GLOBAL_DIFFICULTY_OPTION' AND Value= 1 );

UPDATE HandicapInfos
SET NumCitiesUnhappinessMod='100' , PopulationUnhappinessMod='100' , ProductionFreeUnits='6' , ProductionFreeUnitsPopulationPercent='50' , ProductionFreeUnitsPerCity='2' , RouteCostPercent='100' , UnitCostPercent='100' , BuildingCostPercent='100' , ResearchPercent='100' , PolicyPercent='100' , ImprovementCostPercent='100' , CityProductionNumOptionsConsidered='3' , TechNumOptionsConsidered='3' , PolicyNumOptionsConsidered='3' , AttitudeChange='-1' , NoTechTradeModifier='40' , BarbCampGold='100' , AIBarbarianBonus='70' , AIDeclareWarProb='125' , AIWorkRateModifier='50' ,  AIUnhappinessPercent='100' , AIGrowthPercent='100' , AITrainPercent='100' , AICreatePercent='100' , AIConstructPercent='100', AIBuildingCostPercent='100' , AIUnitCostPercent='100' , AIUnitSupplyPercent='50' , AIUnitUpgradePercent='50', AIAdvancedStartPercent='130', AIFreeXP='10' , AIFreeXPPercent='30'
WHERE Type = 'HANDICAP_AI_DEFAULT'
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BALANCE_GLOBAL_DIFFICULTY_OPTION' AND Value= 1 );

UPDATE HandicapInfos
SET AIPerEraModifier='-6' , HappinessDefault='7', Gold='300'
WHERE Type = 'HANDICAP_AI_DEFAULT' 
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BALANCE_GLOBAL_DIFFICULTY_LEVEL' AND Value= 1 )
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BALANCE_GLOBAL_DIFFICULTY_OPTION' AND Value= 1 );

UPDATE HandicapInfos
SET AIPerEraModifier='-7' , HappinessDefault='8' , Gold='400'
WHERE Type = 'HANDICAP_AI_DEFAULT' 
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BALANCE_GLOBAL_DIFFICULTY_LEVEL' AND Value= 2 )
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BALANCE_GLOBAL_DIFFICULTY_OPTION' AND Value= 1 );

UPDATE HandicapInfos
SET AIPerEraModifier='-8' , HappinessDefault='9' , Gold='500'
WHERE Type = 'HANDICAP_AI_DEFAULT' 
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BALANCE_GLOBAL_DIFFICULTY_LEVEL' AND Value= 3 )
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BALANCE_GLOBAL_DIFFICULTY_OPTION' AND Value= 1 );

UPDATE HandicapInfos
SET AIPerEraModifier='-9' , HappinessDefault='10' , Gold='600'
WHERE Type = 'HANDICAP_AI_DEFAULT' 
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BALANCE_GLOBAL_DIFFICULTY_LEVEL' AND Value= 4 )
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BALANCE_GLOBAL_DIFFICULTY_OPTION' AND Value= 1 );

-- Minor Civ Free Units

UPDATE Eras
SET StartingMinorDefenseUnits = '0'
WHERE Type = 'ERA_ANCIENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Eras
SET StartingMinorDefenseUnits = '0'
WHERE Type = 'ERA_CLASSICAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Eras
SET StartingMinorDefenseUnits = '1'
WHERE Type = 'ERA_MEDIEVAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Eras
SET StartingMinorDefenseUnits = '1'
WHERE Type = 'ERA_RENAISSANCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Eras
SET StartingMinorDefenseUnits = '2'
WHERE Type = 'ERA_INDUSTRIAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Eras
SET StartingMinorDefenseUnits = '2'
WHERE Type = 'ERA_MODERN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Eras
SET StartingMinorDefenseUnits = '3'
WHERE Type = 'ERA_POSTMODERN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Eras
SET StartingMinorDefenseUnits = '3'
WHERE Type = 'ERA_FUTURE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE HandicapInfos
SET StartingMinorDefenseUnits = '1'
WHERE Type = 'HANDICAP_KING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE HandicapInfos
SET StartingMinorDefenseUnits = '2'
WHERE Type = 'HANDICAP_EMPEROR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE HandicapInfos
SET StartingMinorDefenseUnits = '2'
WHERE Type = 'HANDICAP_IMMORTAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE HandicapInfos
SET StartingMinorDefenseUnits = '3'
WHERE Type = 'HANDICAP_DEITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );


UPDATE LoadedFile SET Value=1 WHERE Type='DifficultyMod.sql';