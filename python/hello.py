import csv
import logging

import numpy as np
from file_util import save
from json_util import to_json

log = logging.getLogger(__name__)

DATEFMT = "[%Y-%m-%d %H:%M:%S]"
FORMAT = "%(asctime)s %(thread)d %(message)s"
logging.basicConfig(level=logging.INFO, format=FORMAT, datefmt=DATEFMT)

msg = 'log: Hello World from python app! numpy.dot: %d' % np.dot(2, 3)
log.warning(msg)
print(msg)

# read csv: /tcdata/num_list.csv
num_list = []
with open('./num_list.csv')as f:
    f_csv = csv.reader(f)
    for row in f_csv:
        for col in row:
            num_list.append(int(col))

log.info(num_list)

# sort array
num_list.sort(reverse=True)

result = {
    "Q1": "Hello world",
    "Q2": sum(num_list),
    "Q3": num_list[:10]
}
log.info(result)

# save file
msg = to_json(result)
save('./', 'result.json', msg.encode('utf-8'))
