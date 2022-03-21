# file: create_report.py
# desc: this file gets the data from the pipeline repo and creates an insert statement to insert the data into the db. 

import json
import sys
import os
from os import path

sys.path.append(path.abspath('/home/FLOCIAGLIA/OCR_4_Forest_Service/ocr_4_forest_service/src/'))
from retrieve_Pdata import report_data, get_writeup, get_forest, get_photo

def create_insert_statement():
  # change the path to the file if you want results form google vision or pipeline
  what = report_data('OCR_4_Forest_Service/ocr_4_forest_service/google_vision_results.json')

  string = "insert into report (writeup_no, photo_no, forest, ranger_district, allotment, examiner, date, transect_no, plot_size, plot_interval, type_designation, livestock, slope, aspect, location, elevation) values (" + "'" + what[0] + "'" + ","  + "'" +what[1] + "'" + "," + "'" + what[2] + "'" + "," + "'" + what[3] + "'" + "," + "'" +what[4] + "'"+ "," + "'" +what[5]+ "'" + "," + "'" +what[6] + "'"+ "," + "'" +what[7]+ "'" + "," + "'" +what[8] + "'"+ "," + "'" +what[9]+ "'" + "," + "'" +what[10] + "'"+ "," + "'" +what[11] + "'"+ "," + "'" +what[12] + "'"+ "," + "'" +what[13] + "'"+ "," + "'" +what[14]+ "'" + "," + "'" +what[15] + "'"+ ")"

  text_file = open("insert_report.txt", "w")
  n = text_file.write(string)
  text_file.close()


#main function
if __name__ == '__main__':
  create_insert_statement()
