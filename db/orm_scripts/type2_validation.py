from map_all_tables import engine
from sqlalchemy.inspection import inspect


def format_validation(str):
    insp = inspect(engine)
    cols = insp.get_columns('report')
    for c in cols:
        if (c['name'] == str):
            return c['type']
    return None

result = format_validation('slope')
print(result)