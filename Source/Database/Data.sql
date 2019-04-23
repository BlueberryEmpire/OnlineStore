use Store;

set @imagePath = "../Images/Red.png";
set @price = "5.00";
set @contentPath = ".";
set @isActive = 0;

delete from Product;

insert into Product
select 0, 'Demo' '/Games/Demo/Title.png', 0.00, 'Demo', 1
union all select 1, 'Adductor Wing', '/Games/AdductorWing/Title.png', @price, 
'AdductorWing', @isActive
union all select 2, 'Advanced Laser Pragmatics', 
'/Games/AdvancedLaserPragmatics/Title.png', @price, 
'AdvancedLaserPragmatics', @isActive
union all select 3, 'Ascension Run', '/Games/AscensionRun/Title.png', 
@price, 'AscensionRun', @isActive
union all select 4, 'Bad Day on the Bathysphere', '/Games/BadDayOnTheBathysphere/Title.png', @price, 
'BadDayOnTheBathysphere', @isActive
union all select 5, 'Bing-Bang and the Brickbats', 
'/Games/BingBangAndTheBrickbats/Title.png', @price, 
'BingBangAndTheBrickbats', @isActive
union all select 6, 'Blast Shadow', @imagePath, @price, 'BlastShadow', @isActive
union all select 7, 'Chylde Norrick atop Bucreus Arydynge', 
'/Games/ChyldeNorrickAtopBucreusArydynge/Title.png', 
@price, 'ChyldeNorrickAtopBucreusArydynge', @isActive
union all select 8, 'Dawnstar Station', 
'/Games/DawnstarStation/Title.png', @price, 'DawnstarStation', @isActive
union all select 9, 'Disputed Territory', @imagePath, @price, 'DisputedTerritory', @isActive
union all select 10, 'Folddrive', @imagePath, @price, 'Folddrive', @isActive
union all select 11, 'Freakybomb', '/Games/Freakybomb/Title.png', 
@price, 'Freakybomb', @isActive
union all select 12, 'Fretwork of Starfire', @imagePath, @price, 
'FretworkOfStarfire', @isActive
union all select 13, 'Fwaboom!', @imagePath, @price, 'Fwaboom', @isActive
union all select 14, 'Gnome Farm', @imagePath, @price, 'GnomeFarm', @isActive
union all select 15, 'Halls of Aeolus', 
'/Games/HallsOfAeolus/Title.png', @price, 'HallsOfAeolus', @isActive
union all select 16, 'Hell in Space', @imagePath, @price, 'HellInSpace', @isActive
union all select 17, 'Iconoclast', '/Games/Iconoclast/Title.png', 
@price, 'Iconoclast', @isActive
union all select 18, 'Monster Machine', @imagePath, @price, 'MonsterMachine', @isActive
union all select 19, 'Pirate or Ice Cream?', @imagePath, @price, 
'PirateOrIceCream', @isActive
union all select 20, 'Residuum Sublimae', @imagePath, @price, 
'ResiduumSublimae', @isActive
union all select 21, 'Shillelagh', @imagePath, @price, 'Shillelagh', @isActive
union all select 22, 'Span of the Bow', @imagePath, @price, 'SpanOfTheBow', @isActive
union all select 23, 'Starward Gyre', @imagePath, @price, 'StarwardGyre' , @isActive
union all select 24, 'Tanglebox 41', @imagePath, @price, 'Tanglebox41', @isActive
union all select 25, 'Thrones and Dominations', @imagePath, @price, 
'ThronesAndDominations', @isActive
union all select 26, 'Tranquillitatis', 
'/Games/Tranquillitatis/Title.png', @price, 'Tranquillitatis', @isActive
union all select 27, 'Transit of the Cosmotic', 
'/Games/TransitOfTheCosmotic/Title.png', @price, 'TransitOfTheCosmotic', @isActive
union all select 28, 'Unlit', '/Games/Unlit/Title.png', @price, 'Unlit', @isActive
union all select 29, 'William the Thundrous', 
'/Games/WilliamTheThundrous/Title.png', @price, 'WilliamTheThundrous', @isActive
union all select 30, 'Wyvern''s Roost', @imagePath, @price, @contentPath, @isActive
union all select 31, 'Ye Ettin''s Head', @imagePath, @price, 
@contentPath, @isActive;





