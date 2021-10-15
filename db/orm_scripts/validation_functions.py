#from sqlalchemy.orm import sessionmaker, relationship
from create_validation_tables import engine,Session,valid_forests,valid_allotment
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
test = 'valid_allotment'

local_session = Session(bind=engine)
valid_opts = local_session.query(text(test)).all()

for v in valid_opts:
    print(v.valid_allotment)