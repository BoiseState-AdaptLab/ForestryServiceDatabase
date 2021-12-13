from create_validation_tables import engine, Session
from sqlalchemy.ext.automap import automap_base
from sqlalchemy import Table, column
from sqlalchemy.inspection import inspect

# reflects all tables of database using automap
Base = automap_base()
Base.prepare(engine, reflect=True)
# mapped classes can be created like below
report = Base.classes.report
biomass = Base.classes.biomass
biomass_summary = Base.classes.biomass_summary
cover = Base.classes.cover
cover_summary = Base.classes.cover_summary
plot = Base.classes.plot
soil_summary = Base.classes.soil_summary
transect = Base.classes.transect
valid_allotment = Base.classes.valid_allotment
valid_forests = Base.classes.valid_forests
valid_livestock = Base.classes.valid_livestock
valid_ranger_dist = Base.classes.valid_ranger_dist


# this method automaps tables one by one
# needs to be used with Base imported from create_validaion_tables(?)
# class report(Base):
#     __table__ = Table("report", Base.metadata, autoload=True, autoload_with=engine)


# test if automap / reflection of the tables worked - it does
columns = [column.name for column in inspect(valid_allotment).c]
print (columns)

# # another way of printing the columns
# table = inspect(report)
# for column in table.c:
#     print (column.name)
