#from sqlalchemy.orm import sessionmaker, relationship
from create_validation_tables import engine,Session,valid_forests,valid_allotment,valid_livestock,valid_ranger_dist
from sqlalchemy.sql import text

# test = 'valid_allotment'
#Session = sessionmaker(bind=engine)


# def get_valid_opts(str):
#     input = str
#     valid_opts = []
#     local_session = Session(bind=engine)
#     valids = local_session.query(text(input)).all()
#     for v in valids:
#         valid_opts.append(v.input)

#     return valid_opts


# results = get_valid_opts(test)

# print(results)
test = 'valid_rant'

# local_session = Session(bind=engine)
# valid_opts = local_session.query(valid_allotment).all()

# for v in valid_opts:
#     print(v.valid_allotment)


def get_valids(str):
    valid_opts = []
    local_session = Session(bind=engine)
    if str == 'valid_allotment':
        valids = local_session.query(valid_allotment).all()
        for v in valids:
            valid_opts.append(v.valid_allotment)
    elif str == 'valid_forests':
        valids = local_session.query(valid_forests).all()
        for v in valids:
            valid_opts.append(v.valid_forests)
    elif str == 'valid_livestock':
        valids = local_session.query(valid_livestock).all()
        for v in valids:
            valid_opts.append(v.valid_livestock)
    elif str == 'valid_ranger_dist':
        valids = local_session.query(valid_ranger_dist).all()
        for v in valids:
            valid_opts.append(v.valid_ranger_dist)
    else:
        return None

    return valid_opts

results = get_valids(test)

print(results)
