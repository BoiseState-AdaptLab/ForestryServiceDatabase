from sqlalchemy import insert, update
from sqlalchemy.ext.automap import automap_base
from sqlalchemy import Table, column
from sqlalchemy import create_engine, Integer, String
from sqlalchemy.orm import sessionmaker, relationship
import os

Base = automap_base()
connection_string = "postgresql://student:boisestate@localhost:5432/forestservicedb"
engine = create_engine(connection_string)
Session = sessionmaker(bind=engine)
session = Session()
Base.prepare(engine, reflect=True)
report = Base.classes.report


def create_report(wr_no_value):
    new_report = report(writeup_no=wr_no_value)
    session.add(new_report)
    session.commit()

    return new_report.r_id



def update_report(report_id, column_name, value):
    session.query(report).filter(report.r_id == report_id).update({column_name: value})
    session.commit()
    
    return 0




test = update_report("5", "photo_no", "test_photo")

print(test)