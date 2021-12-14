from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, relationship
import os


Base = declarative_base()
#BASE_DIR = os.path.dirname(os.path.realpath(__file__))
connection_string = "postgresql://student:boisestate@localhost:5432/forestservicedb"
engine = create_engine(connection_string)
Session = sessionmaker(bind=engine)
session = Session()

# create verification tables
class valid_forests(Base):
    __tablename__ = "valid_forests"
    id = Column("id", Integer, primary_key=True)
    valid_forests = Column('valid_forests', String, unique=True)

class valid_allotment(Base):
    __tablename__ = "valid_allotment"
    id = Column("id", Integer, primary_key=True)
    valid_allotment = Column('valid_allotment', String, unique=True)

class valid_livestock(Base):
    __tablename__ = "valid_livestock"
    id = Column("id", Integer, primary_key=True)
    valid_livestock = Column('valid_livestock', String, unique=True)

class valid_ranger_dist(Base):
    __tablename__ = "valid_ranger_dist"
    id = Column("id", Integer, primary_key=True)
    valid_ranger_dist = Column('valid_ranger_dist', String, unique=True)

# Base.metadata.create_all(bind=engine)


#lists of valid strings for each table/column
allotments = [
    {
        "valid_allotment":"bremner"
    },
    {
        "valid_allotment":"blueridge"
    }
]

livestock = [
    {
        "valid_livestock":"cattle"
    },
    {
        "valid_livestock":"sheep"
    },
    {
        "valid_livestock":"horse"
    }
]

ranger_dist = [
    {
        "valid_ranger_dist":"fairfield"
    },
    {
        "valid_ranger_dist":"D5"
    }
]

<<<<<<< HEAD
# class valid_report(Base):
#     __tablename__ = "valid_report"
#     id = Column("id", Integer, primary_key=True)
#     writeup_no = Column('writeup_no', String, unique=True)
#     photo_no = Column('photo_no', String, unique=True)
#     examiner = Column('examiner', String, unique=True)
#     transect_no = Column('transect_no', String, unique=True)
#     slope = Column('slope', Integer, unique=True)
#     aspect = Column('aspect', String, unique=True)
#     elevation_min = Column('elevation_min', Integer, unique=True)
#     elevation_max = Column('elevation_max', Integer, unique=True)
#     forest = Column('forest', String, unique=True)
#     ranger_district = Column('ranger_district', String, unique=True)
#     allotment = Column('allotment', String, unique=True)
#     location = Column('location', String, unique=True)
#     livestock = Column('livestock', String, unique=True)
#     type_designation = Column('type_designation', String, unique=True)
#     type_des_trend = Column('type_des_trend', String, unique=True)
#     date = Column('date', String, unique=True)
#     total_grass = Column('total_grass', Integer, unique=True)
#     total_forb = Column('total_forb', Integer, unique=True)
#     total_browse = Column('total_browse', Integer, unique=True)
#     desirable = Column('desirable', Integer, unique=True)
#     intermediat = Column('intermediat', Integer, unique=True)
#     least_desirable = Column('least_desirable', Integer, unique=True)
#     composition = Column('composition', Integer, unique=True)
#     production = Column('production', Integer, unique=True)
#     forage_condition = Column('forage_condition', Integer, unique=True)
#     ground_cover = Column('ground_cover', Integer, unique=True)
#     erosion = Column('erosion', Integer, unique=True)
#     soil_condition = Column('soil_condition', Integer, unique=True)
#     browse_condition = Column('browse_condition', String, unique=True)
#     trend = Column('trend', String, unique=True)
#     notes = Column('notes', String, unique=True)

Base.metadata.create_all(bind=engine)

=======
>>>>>>> ac5cb3f76277aaa242d04720278e894c1753d4e5
# new_forest = valid_forests(valid_forests="sawtooth")

# session.add(new_forest)
# session.commit()
# for a in allotments:
#     new_allotment=valid_allotment(valid_allotment=a["valid_allotment"])
#     session.add(new_allotment)
#     session.commit()
# for l in livestock:
#     new_livestock=valid_livestock(valid_livestock=l["valid_livestock"])
#     session.add(new_livestock)
#     session.commit()
# for r in ranger_dist:
#     new_ranger_dist=valid_ranger_dist(valid_ranger_dist=r["valid_ranger_dist"])
#     session.add(new_ranger_dist)
#     session.commit()

# valids = session.query(valid_forests).all()
# for v in valids:
#     print(v)

session.close()