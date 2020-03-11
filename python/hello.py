import csv
import json
import logging

import numpy as np

# 设置log
DATEFMT = "[%Y-%m-%d %H:%M:%S]"
FORMAT = "%(asctime)s %(thread)d %(message)s"
logging.basicConfig(level=logging.INFO, format=FORMAT, datefmt=DATEFMT)

log = logging.getLogger(__name__)

# hello world
msg = "log: Hello World from python app! numpy.dot: %d" % np.dot(2, 3)
log.info(msg)
print(msg)

# Docker入门第一课，阿里云天池Docker练习场
# https://tianchi.aliyun.com/competition/entrance/231759/introduction

# 读取csv: /tcdata/num_list.csv，读取试题指定目录失败时，尝试当前目录方便测试
f = None
try:
    f = open("/tcdata/num_list.csv")
except FileNotFoundError as e:
    log.info(e)
    f = open("./num_list.csv")

# 读取数字
num_list = []
f_csv = csv.reader(f)
for row in f_csv:
    for col in row:
        num_list.append(int(col))

f.close()

# 求和
log.info(num_list)
num_sum = sum(num_list)

# 去重，注意试题不需要
# num_list = list(set(num_list))

# 排序
num_list.sort(reverse=True)

# 拼装数据结果
result = {
    "Q1": "Hello world",
    "Q2": num_sum,
    "Q3": num_list[:10]
}
log.info(result)

# 保存结果到文件中
with open("result.json", "w") as f:
    json.dump(result, f)
