#
# Author: Sandra Busch
# Date: Fri 17 Dec 2021 08:11:52 AM MST
# Description:
# This script contains function(s) that can be used
# to retrieve information about certain fields in the forest report
# for which we have a finite set of valid inputs.
# e.g. the "valid_forests" table contains "Sawtooth"
#
from sqlalchemy.orm import sessionmaker, relationship
from create_validation_tables import engine,Session, valid_forests, valid_allotment, valid_livestock, valid_ranger_dist
from sqlalchemy.sql import text


# test input replaces user input (for testing only)
test = 'valid_ranger_dist'

# function that takes in a string representing 
# the table we would like to access and
# returns all contents of chosen table 
# in a comma seperated list
# returns None if table chosen does not exist
def get_valids(str):
    valid_opts = []
    local_session = Session(bind=engine)
    if str == 'allotment':
        valids = local_session.query(valid_allotment).all()
        for v in valids:
            valid_opts.append(v.valid_allotment)
    elif str == 'forest':
        valids = local_session.query(valid_forests).all()
        for v in valids:
            valid_opts.append(v.valid_forests)
    elif str == 'kind of livestock':
        valids = local_session.query(valid_livestock).all()
        for v in valids:
            valid_opts.append(v.valid_livestock)
    elif str == 'ranger district':
        valids = local_session.query(valid_ranger_dist).all()
        for v in valids:
            valid_opts.append(v.valid_ranger_dist)
    else:
        return None

    return valid_opts


# prints the results of fuction get_valids() to console
# for testing purposes
results = get_valids(test)

print(results)
