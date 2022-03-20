# file: create_report.py
# desc: this file gets the data from the pipeline repo and creates an insert statement to insert the data into the db. 

import json
import sys
import os
from os import path

sys.path.append(path.abspath('/home/FLOCIAGLIA/OCR_4_Forest_Service/ocr_4_forest_service/src/'))
from retrieve_Pdata import report_data, get_writeup, get_forest, get_photo

def create_insert_statement():
  what = report_data('../../../OCR_4_Forest_Service/ocr_4_forest_service/field_preds.json')

  print(what[6])


#main function
if __name__ == '__main__':
  create_insert_statement()
