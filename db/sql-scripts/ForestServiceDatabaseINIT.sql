

CREATE TABLE report (
  r_id int NOT NULL PRIMARY KEY,
  writeup_no varchar(255),
  photo_no varchar(255),
  examiner varchar(255),
  transect_no varchar(255),
  slope int,
  aspect varchar(255),
  elevation_min int,
  elevation_max int,
  forest varchar(255),
  ranger_district varchar(255),
  allotment varchar(255),
  location varchar(255),
  livestock varchar(255),
  type_designation varchar(255),
  type_des_trend varchar(255),
  date date,
  total_grass int,
  total_forb int,
  total_browse int,
  desirable int,
  intermediate int,
  least_desirable int,
  composition int,
  production int,
  forage_condition int,
  ground_cover int,
  erosion int,
  soil_condition int,
  browse_condition varchar(255),
  trend varchar(255),
  notes varchar(510)
);



CREATE TABLE transect (
  t_id int NOT NULL PRIMARY KEY,
  r_id int NOT NULL,
  transect_no int,
  location varchar(255),
  elevation int,
  slope int,
  type_designation varchar(255),
  aspect char
);



CREATE TABLE plot (
  p_id int NOT NULL PRIMARY KEY,
  t_id int NOT NULL,
  plot_number int 
);



CREATE TABLE biomass (
  v_id int NOT NULL PRIMARY KEY,
  p_id int NOT NULL,
  type varchar(255),
  species varchar(255),
  green_weight int 
);



CREATE TABLE biomass_summary (
  v_id int NOT NULL PRIMARY KEY,
  r_id int NOT NULL,
  species varchar(255),
  trans1 int,
  trans2 int,
  trans3 int,
  total int,
  dry_weight int, 
  prod_dry_weight int, 
  composition int,
  desirability_D int, 
  desirability_I int,
  desirability_L int 
);



CREATE TABLE cover (
  b_id int NOT NULL PRIMARY KEY,
  p_id int NOT NULL,
  type varchar(255),
  value int 
);



CREATE TABLE cover_summary (
  b_id int NOT NULL PRIMARY KEY,
  r_id int NOT NULL,
  type varchar(255),
  total int,
  average int
);



CREATE TABLE soil_summary (
  s_id int NOT NULL PRIMARY KEY,
  r_id int NOT NULL,
  surface_texture varchar(255),
  surf_text_thick int,
  surf_text_ph float,
  subsoil_texture varchar(255),
  sub_text_thick int,
  sub_text_ph float,
  substratum_mat varchar(255),
  eff_root_depth varchar(255),
  general_remarks varchar(255),
  avg_surface_loss float,
  loss_over_area int,
  gullies_length float,
  gullies_depth float,
  erosion_remarks varchar(255),
  detachability int,
  rock_coverage int,
  adj_detachability float,
  permeability int,
  erod_index float,
  erod_index_class varchar(255),
  slope int,
  eros_haz_class varchar(255),
  compaction varchar(255),
  displacement varchar(255),
  cover_dispersion varchar(255),
  potential_product int,
  suit_reasons varchar(255)
);
