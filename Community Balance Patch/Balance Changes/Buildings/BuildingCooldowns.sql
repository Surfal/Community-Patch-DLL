-- Building Cooldowns

UPDATE Buildings SET PurchaseCooldown =     1  WHERE Cost <=  100 AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS_COOLDOWN' AND Value= 1 );
UPDATE Buildings SET PurchaseCooldown =     1  WHERE Cost >  100 AND Cost <=  200 AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS_COOLDOWN' AND Value= 1 );
UPDATE Buildings SET PurchaseCooldown =     1  WHERE Cost >  200 AND Cost <=  300 AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS_COOLDOWN' AND Value= 1 );
UPDATE Buildings SET PurchaseCooldown =     1  WHERE Cost >  300 AND Cost <=  400 AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS_COOLDOWN' AND Value= 1 );
UPDATE Buildings SET PurchaseCooldown =     1  WHERE Cost >  400 AND Cost <=  500 AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS_COOLDOWN' AND Value= 1 );
UPDATE Buildings SET PurchaseCooldown =     1  WHERE Cost >  500 AND Cost <=  600 AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS_COOLDOWN' AND Value= 1 );
UPDATE Buildings SET PurchaseCooldown =     1  WHERE Cost >  600 AND Cost <=  700 AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS_COOLDOWN' AND Value= 1 );
UPDATE Buildings SET PurchaseCooldown =     1  WHERE Cost >  700 AND Cost <=  800 AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS_COOLDOWN' AND Value= 1 );
UPDATE Buildings SET PurchaseCooldown =     1  WHERE Cost >  800 AND Cost <=  900 AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS_COOLDOWN' AND Value= 1 );
UPDATE Buildings SET PurchaseCooldown =		1  WHERE Cost >= 900 AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS_COOLDOWN' AND Value= 1 );