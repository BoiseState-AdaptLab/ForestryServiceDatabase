-- First Report given to us 

-- for testing 
-- USE ForestServiceDB; 


INSERT INTO report (r_id, writeup_no, photo_no, examiner, transect_no, slope, aspect, 
elevation_min, elevation_max, forest, ranger_district, allotment, location, livestock, 
type_designation, type_des_trend, date, total_grass, total_forb, total_browse, desirable, 
intermediate, least_desirable, composition, production, forage_condition, ground_cover, erosion, 
soil_condition, browse_condition, trend, notes)
VALUES (1, 'A-13', 'ESH-3-195', 'D Asleft', '1-3, 2-3, 3-3', 43, 's-w-w', 
6800, 7000, 'Sawtooth', 'D-5', 'Blue Ridge', 'East and West of sprout creek', 'sheep',
'S5', 's5/s5', '1972-07-06', 189, 36, 253, 58,
23, 19, 36, 19, 55, 17, 38, 
55, 'good', 'right', 'NONE');


INSERT INTO biomass_summary(b_id, r_id, species, trans1, trans2, trans3, total, dry_weight, prod_dry_weight, composition, desirability_D, desirability_I, desirability_L)
VALUES(1, 1, 'AGSPI', 49, 75, 45, 169, 592, 164, 34, 30, 4, NULL);

INSERT INTO biomass_summary(b_id, r_id, species, trans1, trans2, trans3, total, dry_weight, prod_dry_weight, composition, desirability_D, desirability_I, desirability_L)
VALUES(2, 1, 'BRTE', 3, NULL, NULL, 30, 12, 4, 1, NULL, NULL, 1);

INSERT INTO biomass_summary(b_id, r_id, species, trans1, trans2, trans3, total, dry_weight, prod_dry_weight, composition, desirability_D, desirability_I, desirability_L)
VALUES(3, 1, 'ELCI', 1, NULL, NULL, 10, 4, 1, NULL, NULL, NULL, NULL);

INSERT INTO biomass_summary(b_id, r_id, species, trans1, trans2, trans3, total, dry_weight, prod_dry_weight, composition, desirability_D, desirability_I, desirability_L)
VALUES(4, 1, 'BRMA', NULL, 6, 11, 170, 60, 20, 4, 4, NULL, NULL);

INSERT INTO biomass_summary(b_id, r_id, species, trans1, trans2, trans3, total, dry_weight, prod_dry_weight, composition, desirability_D, desirability_I, desirability_L)
VALUES(5, 1, 'BASA', 7, 5, 16, 280, 70, 23, 5, 5, NULL, NULL);

INSERT INTO biomass_summary(b_id, r_id, species, trans1, trans2, trans3, total, dry_weight, prod_dry_weight, composition, desirability_D, desirability_I, desirability_L)
VALUES(6, 1, 'ANNUAL', 2, 2, 9, 130, 39, 13, 3, NULL, NULL, 3);

INSERT INTO biomass_summary(b_id, r_id, species, trans1, trans2, trans3, total, dry_weight, prod_dry_weight, composition, desirability_D, desirability_I, desirability_L)
VALUES(7, 1, 'PHACE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO biomass_summary(b_id, r_id, species, trans1, trans2, trans3, total, dry_weight, prod_dry_weight, composition, desirability_D, desirability_I, desirability_L)
VALUES(8, 1, 'SYMPTH', 26, 26, 18, 700, 280, 93, 19, 10, 9, NULL);

INSERT INTO biomass_summary(b_id, r_id, species, trans1, trans2, trans3, total, dry_weight, prod_dry_weight, composition, desirability_D, desirability_I, desirability_L)
VALUES(9, 1, 'ARTR', 27, 12, 52, 910, 364, 121, 25, NULL, 10, 15);

INSERT INTO biomass_summary(b_id, r_id, species, trans1, trans2, trans3, total, dry_weight, prod_dry_weight, composition, desirability_D, desirability_I, desirability_L)
VALUES(10, 1, 'PRUI', 13, 3, 7, 230, 92, 31, 7, 7, NULL, NULL);

INSERT INTO biomass_summary(b_id, r_id, species, trans1, trans2, trans3, total, dry_weight, prod_dry_weight, composition, desirability_D, desirability_I, desirability_L)
VALUES(11, 1, 'CHUIL', NULL, 2, 4, 60, 24, 8, 2, 2, NULL, NULL);

INSERT INTO biomass_summary(b_id, r_id, species, trans1, trans2, trans3, total, dry_weight, prod_dry_weight, composition, desirability_D, desirability_I, desirability_L)
VALUES(12, 1, 'CEUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


INSERT INTO cover_summary(c_id, r_id, type, total, average)
VALUES(1, 1, 'Overstory (Trees)', NULL, NULL);

INSERT INTO cover_summary(c_id, r_id, type, total, average)
VALUES(2, 1, 'Overstory (Shrub)', 11, 4);

INSERT INTO cover_summary(c_id, r_id, type, total, average)
VALUES(3, 1, 'Crown Cover (Herb)', NULL, NULL);

INSERT INTO cover_summary(c_id, r_id, type, total, average)
VALUES(4, 1, 'Bare Ground', 144, 48);

INSERT INTO cover_summary(c_id, r_id, type, total, average)
VALUES(5, 1, 'Rock/Pav (Nat)', NULL, NULL);

INSERT INTO cover_summary(c_id, r_id, type, total, average)
VALUES(6, 1, 'Rock/Pav (Unnat)', 3, 1);

INSERT INTO cover_summary(c_id, r_id, type, total, average)
VALUES(7, 1, 'Veg/Litter', 154, 51);

INSERT INTO cover_summary(c_id, r_id, type, total, average)
VALUES(8, 1, 'Soil Disturbance', 9, 3);

INSERT INTO cover_summary(c_id, r_id, type, total, average)
VALUES(9, 1, 'Droppings', NULL, NULL);

INSERT INTO cover_summary(c_id, r_id, type, total, average)
VALUES(10, 1, 'Pellet Groups', NULL, NULL);


INSERT INTO transect(t_id, r_id, transect_no, location, elevation, slope, type_designation, aspect)
VALUES (1, 1, 1, 'Mountain Brush type west of Sprout Creek', 6800, 45, 'S5', 'S');


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (1, 1, 1);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(1, 1, 'Grass', 'AGSPI', 6);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(11, 1, 'Grass', 'BRTE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(21, 1, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(31, 1, 'Forb', 'BASA', 7);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(41, 1, 'Forb', 'ANNUAL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(51, 1, 'Forb', 'PHACE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(61, 1, 'Browse', 'SYMPTH', 8);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(71, 1, 'Browse', 'ARTR', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(81, 1, 'Browse', 'PRUI', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(1, 1, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(2, 1, 'Overstory (Shrub)', 5);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(3, 1, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(4, 1, ' Bare Ground', 90);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(5, 1, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(6, 1, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(7, 1, 'Veg/Litter', 10);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(8, 1, 'Soil Disturbance', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(9, 1, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(10, 1, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (2, 1, 2);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(2, 2, 'Grass', 'AGSPI', 2);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(12, 2, 'Grass', 'BRTE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(22, 2, 'Grass', 'ELCI', 1);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(32, 2, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(42, 2, 'Forb', 'ANNUAL', 2);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(52, 2, 'Forb', 'PHACE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(62, 2, 'Browse', 'SYMPTH', 6);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(72, 2, 'Browse', 'ARTR', 5);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(82, 2, 'Browse', 'PRUI', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(11, 2, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(12, 2, 'Overstory (Shrub)', 5);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(13, 2, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(14, 2, ' Bare Ground', 40);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(15, 2, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(16, 2, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(17, 2, 'Veg/Litter', 60);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(18, 2, 'Soil Disturbance', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(19, 2, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(20, 2, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (3, 1, 3);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(3, 3, 'Grass', 'AGSPI', 5);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(13, 3, 'Grass', 'BRTE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(23, 3, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(33, 3, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(43, 3, 'Forb', 'ANNUAL', 2);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(53, 3, 'Forb', 'PHACE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(63, 3, 'Browse', 'SYMPTH', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(73, 3, 'Browse', 'ARTR', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(83, 3, 'Browse', 'PRUI', 5);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(21, 3, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(22, 3, 'Overstory (Shrub)', 5);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(23, 3, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(24, 3, ' Bare Ground', 60);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(25, 3, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(26, 3, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(27, 3, 'Veg/Litter', 40);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(28, 3, 'Soil Disturbance', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(29, 3, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(30, 3, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (4, 1, 4);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(4, 4, 'Grass', 'AGSPI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(14, 4, 'Grass', 'BRTE', 3);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(24, 4, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(34, 4, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(44, 4, 'Forb', 'ANNUAL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(54, 4, 'Forb', 'PHACE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(64, 4, 'Browse', 'SYMPTH', 5);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(74, 4, 'Browse', 'ARTR', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(84, 4, 'Browse', 'PRUI', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(31, 4, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(32, 4, 'Overstory (Shrub)', 3);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(33, 4, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(34, 4, ' Bare Ground', 70);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(35, 4, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(36, 4, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(37, 4, 'Veg/Litter', 30);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(38, 4, 'Soil Disturbance', 10);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(39, 4, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(40, 4, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (5, 1, 5);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(5, 5, 'Grass', 'AGSPI', 2);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(15, 5, 'Grass', 'BRTE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(25, 5, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(35, 5, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(45, 5, 'Forb', 'ANNUAL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(55, 5, 'Forb', 'PHACE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(65, 5, 'Browse', 'SYMPTH', 4);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(75, 5, 'Browse', 'ARTR', 10);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(85, 5, 'Browse', 'PRUI', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(41, 5, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(42, 5, 'Overstory (Shrub)', 10);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(43, 5, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(44, 5, ' Bare Ground', 10);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(45, 5, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(46, 5, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(47, 5, 'Veg/Litter', 90);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(48, 5, 'Soil Disturbance', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(49, 5, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(50, 5, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (6, 1, 6);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(6, 6, 'Grass', 'AGSPI', 8);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(16, 6, 'Grass', 'BRTE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(26, 6, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(36, 6, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(46, 6, 'Forb', 'ANNUAL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(56, 6, 'Forb', 'PHACE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(66, 6, 'Browse', 'SYMPTH', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(76, 6, 'Browse', 'ARTR', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(86, 6, 'Browse', 'PRUI', 5);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(51, 6, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(52, 6, 'Overstory (Shrub)', 5);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(53, 6, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(54, 6, ' Bare Ground', 80);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(55, 6, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(56, 6, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(57, 6, 'Veg/Litter', 20);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(58, 6, 'Soil Disturbance', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(59, 6, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(60, 6, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (7, 1, 7);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(7, 7, 'Grass', 'AGSPI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(17, 7, 'Grass', 'BRTE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(27, 7, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(37, 7, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(47, 7, 'Forb', 'ANNUAL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(57, 7, 'Forb', 'PHACE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(67, 7, 'Browse', 'SYMPTH', 3);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(77, 7, 'Browse', 'ARTR', 5);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(87, 7, 'Browse', 'PRUI', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(61, 7, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(62, 7, 'Overstory (Shrub)', 5);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(63, 7, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(64, 7, ' Bare Ground', 90);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(65, 7, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(66, 7, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(67, 7, 'Veg/Litter', 10);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(68, 7, 'Soil Disturbance', 5);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(69, 7, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(70, 7, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (8, 1, 8);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(8, 8, 'Grass', 'AGSPI', 5);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(18, 8, 'Grass', 'BRTE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(28, 8, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(38, 8, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(48, 8, 'Forb', 'ANNUAL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(58, 8, 'Forb', 'PHACE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(68, 8, 'Browse', 'SYMPTH', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(78, 8, 'Browse', 'ARTR', 7);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(88, 8, 'Browse', 'PRUI', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(71, 8, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(72, 8, 'Overstory (Shrub)', NULL);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(73, 8, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(74, 8, ' Bare Ground', 10);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(75, 8, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(76, 8, 'Rock/Pav (Unnat)', 10);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(77, 8, 'Veg/Litter', 80);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(78, 8, 'Soil Disturbance', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(79, 8, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(80, 8, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (9, 1, 9);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(9, 9, 'Grass', 'AGSPI', 1);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(19, 9, 'Grass', 'BRTE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(29, 9, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(39, 9, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(49, 9, 'Forb', 'ANNUAL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(59, 9, 'Forb', 'PHACE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(69, 9, 'Browse', 'SYMPTH', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(79, 9, 'Browse', 'ARTR', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(89, 9, 'Browse', 'PRUI', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(81, 9, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(82, 9, 'Overstory (Shrub)', NULL);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(83, 9, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(84, 9, ' Bare Ground', 15);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(85, 9, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(86, 9, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(87, 9, 'Veg/Litter', 85);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(88, 9, 'Soil Disturbance', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(89, 9, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(90, 9, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (10, 1, 10);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(10, 10, 'Grass', 'AGSPI', 20);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(20, 10, 'Grass', 'BRTE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(30, 10, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(40, 10, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(50, 10, 'Forb', 'ANNUAL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(60, 10, 'Forb', 'PHACE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(70, 10, 'Browse', 'SYMPTH', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(80, 10, 'Browse', 'ARTR', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(90, 10, 'Browse', 'PRUI', 3);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(91, 10, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(92, 10, 'Overstory (Shrub)', 5);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(93, 10, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(94, 10, ' Bare Ground', 10);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(95, 10, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(96, 10, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(97, 10, 'Veg/Litter', 90);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(98, 10, 'Soil Disturbance', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(99, 10, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(100, 10, 'Pellet Groups', NULL);


INSERT INTO transect(t_id, r_id, transect_no, location, elevation, slope, type_designation, aspect)
VALUES (2, 1, 2, 'East of Sprout Creek near source', 6900, 45, 'S5', 'W');


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (11, 2, 1);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(108, 11, 'Grass', 'AGSPI', 5);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(91, 11, 'Grass', 'BRMA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(92, 11, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(93, 11, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(94, 11, 'Forb', 'ANNUAL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(95, 11, 'Browse', 'CHUIL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(96, 11, 'Browse', 'SYMPTH', 3);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(97, 11, 'Browse', 'ARTR', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(98, 11, 'Browse', 'PRUI', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(101, 11, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(102, 11, 'Overstory (Shrub)', NULL);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(103, 11, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(104, 11, ' Bare Ground', 80);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(105, 11, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(106, 11, 'Rock/Pav (Unnat)', 5);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(107, 11, 'Veg/Litter', 15);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(108, 11, 'Soil Disturbance', 5);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(109, 11, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(110, 11, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (12, 2, 2);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(99, 12, 'Grass', 'AGSPI', 5);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(100, 12, 'Grass', 'BRMA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(101, 12, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(102, 12, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(103, 12, 'Forb', 'ANNUAL', 2);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(104, 12, 'Browse', 'CHUIL', 2);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(105, 12, 'Browse', 'SYMPTH', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(106, 12, 'Browse', 'ARTR', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(107, 12, 'Browse', 'PRUI', 3);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(111, 12, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(112, 12, 'Overstory (Shrub)', NULL);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(113, 12, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(114, 12, ' Bare Ground', 70);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(115, 12, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(116, 12, 'Rock/Pav (Unnat)', 5);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(117, 12, 'Veg/Litter', 25);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(118, 12, 'Soil Disturbance', 5);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(119, 12, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(120, 12, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (13, 2, 3);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(109, 13, 'Grass', 'AGSPI', 20);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(110, 13, 'Grass', 'BRMA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(111, 13, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(112, 13, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(113, 13, 'Forb', 'ANNUAL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(114, 13, 'Browse', 'CHUIL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(115, 13, 'Browse', 'SYMPTH', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(116, 13, 'Browse', 'ARTR', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(117, 13, 'Browse', 'PRUI', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(121, 13, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(122, 13, 'Overstory (Shrub)', NULL);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(123, 13, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(124, 13, ' Bare Ground', 10);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(125, 13, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(126, 13, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(127, 13, 'Veg/Litter', 90);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(128, 13, 'Soil Disturbance', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(129, 13, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(130, 13, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (14, 2, 4);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(118, 14, 'Grass', 'AGSPI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(119, 14, 'Grass', 'BRMA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(120, 14, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(121, 14, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(122, 14, 'Forb', 'ANNUAL', 1);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(123, 14, 'Forb', 'CHUIL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(124, 14, 'Browse', 'SYMPTH', 10);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(125, 14, 'Browse', 'ARTR', 5);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(126, 14, 'Browse', 'PRUI', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(131, 14, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(132, 14, 'Overstory (Shrub)', 5);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(133, 14, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(134, 14, ' Bare Ground', 70);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(135, 14, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(136, 14, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(137, 14, 'Veg/Litter', 30);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(138, 14, 'Soil Disturbance', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(139, 14, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(140, 14, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (15, 2, 5);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(127, 15, 'Grass', 'AGSPI', 2);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(128, 15, 'Grass', 'BRMA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(129, 15, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(130, 15, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(131, 15, 'Forb', 'ANNUAL', 1);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(132, 15, 'Browse', 'CHUIL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(133, 15, 'Browse', 'SYMPTH', 5);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(134, 15, 'Browse', 'ARTR', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(135, 15, 'Browse', 'PRUI', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(141, 15, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(142, 15, 'Overstory (Shrub)', NULL);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(143, 15, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(144, 15, ' Bare Ground', 90);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(145, 15, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(146, 15, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(147, 15, 'Veg/Litter', 10);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(148, 15, 'Soil Disturbance', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(149, 15, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(150, 15, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (16, 2, 6);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(136, 16, 'Grass', 'AGSPI', 8);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(137, 16, 'Grass', 'BRMA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(138, 16, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(139, 16, 'Forb', 'BASA', 5);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(140, 16, 'Forb', 'ANNUAL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(141, 16, 'Browse', 'CHUIL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(142, 16, 'Browse', 'SYMPTH', 3);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(143, 16, 'Browse', 'ARTR', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(144, 16, 'Browse', 'PRUI', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(151, 16, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(152, 16, 'Overstory (Shrub)', NULL);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(153, 16, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(154, 16, ' Bare Ground', 85);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(155, 16, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(156, 16, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(157, 16, 'Veg/Litter', 15);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(158, 16, 'Soil Disturbance', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(159, 16, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(160, 16, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (17, 2, 7);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(145, 17, 'Grass', 'AGSPI', 8);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(146, 17, 'Grass', 'BRMA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(147, 17, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(148, 17, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(149, 17, 'Forb', 'ANNUAL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(150, 17, 'Browse', 'CHUIL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(151, 17, 'Browse', 'SYMPTH', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(152, 17, 'Browse', 'ARTR', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(153, 17, 'Browse', 'PRUI', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(161, 17, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(162, 17, 'Overstory (Shrub)', NULL);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(163, 17, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(164, 17, ' Bare Ground', 15);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(165, 17, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(166, 17, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(167, 17, 'Veg/Litter', 85);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(168, 17, 'Soil Disturbance', 5);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(169, 17, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(170, 17, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (18, 2, 8);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(154, 18, 'Grass', 'AGSPI', 2);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(155, 18, 'Grass', 'BRMA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(156, 18, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(157, 18, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(158, 18, 'Forb', 'ANNUAL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(159, 18, 'Browse', 'CHUIL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(160, 18, 'Browse', 'SYMPTH', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(161, 18, 'Browse', 'ARTR', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(162, 18, 'Browse', 'PRUI', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(171, 18, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(172, 18, 'Overstory (Shrub)', NULL);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(173, 18, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(174, 18, ' Bare Ground', 90);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(175, 18, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(176, 18, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(177, 18, 'Veg/Litter', 10);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(178, 18, 'Soil Disturbance', 10);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(179, 18, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(180, 18, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (19, 2, 9);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(163, 19, 'Grass', 'AGSPI', 25);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(164, 19, 'Grass', 'BRTE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(165, 19, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(166, 19, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(167, 19, 'Forb', 'ANNUAL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(169, 19, 'Browse', 'CHUIL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(170, 19, 'Browse', 'SYMPTH', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(171, 19, 'Browse', 'ARTR', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(172, 19, 'Browse', 'PRUI', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(181, 19, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(182, 19, 'Overstory (Shrub)', NULL);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(183, 19, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(184, 19, ' Bare Ground', 65);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(185, 19, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(186, 19, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(187, 19, 'Veg/Litter', 35);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(188, 19, 'Soil Disturbance', 10);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(189, 19, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(190, 19, 'Pellet Groups', NULL);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (20, 2, 10);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(173, 20, 'Grass', 'AGSPI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(174, 20, 'Grass', 'BRTE', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(175, 20, 'Grass', 'ELCI', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(176, 20, 'Forb', 'BASA', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(177, 20, 'Forb', 'ANNUAL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(178, 20, 'Browse', 'CHUIL', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(179, 20, 'Browse', 'SYMPTH', NULL);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(180, 20, 'Browse', 'ARTR', 7);

INSERT INTO biomass(b_id, p_id, type, species, green_weight)
VALUES(181, 20, 'Browse', 'PRUI', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(191, 20, 'Overstory (Trees)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(192, 20, 'Overstory (Shrub)', NULL);
 
INSERT INTO cover(c_id, p_id, type, value)
VALUES(193, 20, 'Crown Cover (Herb)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(194, 20, ' Bare Ground', 80);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(195, 20, 'Rock/Pav (Nat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(196, 20, 'Rock/Pav (Unnat)', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(197, 20, 'Veg/Litter', 20);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(198, 20, 'Soil Disturbance', 5);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(199, 20, 'Droppings', NULL);

INSERT INTO cover(c_id, p_id, type, value)
VALUES(200, 20, 'Pellet Groups', NULL);


INSERT INTO transect(t_id, r_id, transect_no, location, elevation, slope, type_designation, aspect)
VALUES (3, 1, 3, 'West of Sprout Creek', 7000, 35, '5', 'W');


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (21, 3, 1);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (22, 3, 2);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (23, 3, 3);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (24, 3, 4);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (25, 3, 5);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (26, 3, 6);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (27, 3, 7);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (28, 3, 8);


INSERT INTO plot(p_id, t_id, plot_number)
VALUES (29, 3, 9);

INSERT INTO plot(p_id, t_id, plot_number)
VALUES (30, 3, 10);


INSERT INTO soil_summary(s_id, r_id, surface_texture, surf_text_thick, surf_text_ph,
subsoil_texture, sub_text_thick, sub_text_ph, substratum_mat, eff_root_depth,
general_remarks, avg_surface_loss, loss_over_area, gullies_length, gullies_depth,
erosion_remarks, detachability, rock_coverage, adj_detachability, permeability,
erod_index, erod_index_class, slope, eros_haz_class, compaction,
displacement, cover_dispersion, potential_product, suit_reasons)
VALUES(1, 1, 'Gravely sandy loom', 10, 6.0,
       'Gravely loam', 10, 6.0, 'Granitic', NULL,
       'soil is fairly stable', 1.5, 0.5, NULL, NULL,
       'no marked erosion', 6, 5, 5.7, 5,
       28.5, NULL, 45, NULL, 'none',
       'moderate', 'Fairly Uniform', 800, 'slope and forage are suitable for sheep grazing');