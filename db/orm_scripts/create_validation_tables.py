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