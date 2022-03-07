from create_validation_tables import Session, engine, TemplateTable, ValidForest, ValidAllotment, ValidLivestock, ValidRangerDist

# local_session = Session(bind=engine)


def get_valid_opts(field_name, local_session):

    '''
      Function takes in the field name as a string
      and returns the valid options for that field
      as a list of strings. 
      Returns None if table chosen does not exist
    '''
    valid_opts = []

    if field_name == 'allotment':
        valids = local_session.query(ValidAllotment).all()
        for valid in valids:
            valid_opts.append(valid.valid_strings)

    elif field_name == 'forest':
        valids = local_session.query(ValidForest).all()
        for valid in valids:
            valid_opts.append(valid.valid_strings)

    elif field_name == 'kind of livestock':
        valids = local_session.query(ValidLivestock).all()
        for valid in valids:
            valid_opts.append(valid.valid_strings)

    elif field_name == 'ranger district':
        valids = local_session.query(ValidRangerDist).all()
        for valid in valids:
            valid_opts.append(valid.valid_strings)

    else:
        return None

    return valid_opts


def get_object(table_name, option, local_session):
    '''
    Retrive one specific object in the table 
    '''
    return local_session.query(table_name).filter(table_name.valid_strings==option).first()
    



