-- Author: unknown & Sandra Busch
-- Date: Fri 17 Dec 2021 08:11:52 AM MST
-- Initialization script for the Forest Service Database
-- There is a database diagram located in the parent folder 
-- that displays the layout of the tables 

DROP DATABASE IF EXISTS forestservicedb;
CREATE DATABASE forestservicedb;


\c forestservicedb;
create schema forestservice;
set search_path to forestservice;
-- in case the three lines of code above do not work with docker,
-- try to use the single line below instead
-- use forestservicedb;


CREATE TABLE forestservice.report (
  r_id SERIAL PRIMARY KEY,
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


CREATE TABLE forestservice.transect (
  t_id SERIAL PRIMARY KEY,
  r_id int NOT NULL,
  transect_no int,
  location varchar(255),
  elevation int,
  slope int,
  type_designation varchar(255),
  aspect varchar(10)
);


ALTER TABLE forestservice.transect 
ADD CONSTRAINT FK_parent_report_t
FOREIGN KEY (r_id) 
REFERENCES report(r_id); 


CREATE TABLE forestservice.plot (
  p_id SERIAL PRIMARY KEY,
  t_id int NOT NULL,
  plot_number int 
);


ALTER TABLE forestservice.plot 
ADD CONSTRAINT FK_parent_transect_p
FOREIGN KEY (t_id) 
REFERENCES transect(t_id); 


CREATE TABLE forestservice.biomass (
  b_id SERIAL PRIMARY KEY,
  p_id int NOT NULL,
  type varchar(255),
  species varchar(255),
  green_weight int 
);


ALTER TABLE forestservice.biomass 
ADD CONSTRAINT FK_parent_plot_b
FOREIGN KEY (p_id) 
REFERENCES plot(p_id); 


CREATE TABLE forestservice.biomass_summary (
  b_id SERIAL PRIMARY KEY,
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


ALTER TABLE forestservice.biomass_summary 
ADD CONSTRAINT FK_parent_report_b
FOREIGN KEY (r_id) 
REFERENCES report(r_id); 


CREATE TABLE forestservice.cover (
  c_id SERIAL PRIMARY KEY,
  p_id int NOT NULL,
  type varchar(255),
  value int 
);


ALTER TABLE forestservice.cover 
ADD CONSTRAINT FK_parent_plot_c
FOREIGN KEY (p_id) 
REFERENCES plot(p_id); 


CREATE TABLE forestservice.cover_summary (
  c_id SERIAL PRIMARY KEY,
  r_id int NOT NULL,
  type varchar(255),
  total int,
  average int
);


ALTER TABLE forestservice.cover_summary 
ADD CONSTRAINT FK_parent_report_c
FOREIGN KEY (r_id) 
REFERENCES report(r_id); 


CREATE TABLE forestservice.soil_summary (
  s_id SERIAL PRIMARY KEY,
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


ALTER TABLE forestservice.soil_summary 
ADD CONSTRAINT FK_parent_report_s
FOREIGN KEY (r_id) 
REFERENCES report(r_id); 


-- create verification tables (type I fields are created separately)
CREATE TABLE forestservice.valid_report (
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

CREATE TABLE forestservice.valid_transect (
  transect_no int,
  location varchar(255),
  elevation int,
  slope int,
  type_designation varchar(255),
  aspect varchar(10)
);

CREATE TABLE forestservice.valid_plot (
  plot_number int 
);

CREATE TABLE forestservice.valid_biomass (
  type varchar(255),
  species varchar(255),
  green_weight int 
);

CREATE TABLE forestservice.valid_biomass_summary (
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

CREATE TABLE forestservice.valid_cover (
  type varchar(255),
  value int 
);

CREATE TABLE forestservice.valid_cover_summary (
  type varchar(255),
  total int,
  average int
);

CREATE TABLE forestservice.valid_soil_summary (
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


CREATE TABLE forestservice.validation (
  r_id int NOT NULL,
  column_name varchar(255),
  validated boolean,
  confidence float,
  field_image varchar(255)
);

ALTER TABLE forestservice.validation
ADD CONSTRAINT FK_parent_report_t
FOREIGN KEY (r_id) 
REFERENCES report(r_id); 
