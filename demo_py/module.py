'''
Author: Jingsheng Lyu
Date: 2021-02-01 00:00:14
LastEditors: Jingsheng Lyu
LastEditTime: 2021-02-01 00:21:30
FilePath: /ROS_Learning/demo_py/module.py
Github: https://github.com/jingshenglyu
Web: https://jingshenglyu.github.io/
E-Mail: jingshenglyu@gmail.com
'''
# Core module
# import datetime
from datetime import date

# import time
from time import time

# pip module
import numpy as np

# Import custom module
from validator import validate_email

# today = datetime.date.today()
today = date.today()

# timestamp = time.time()
timestamp = time()

# print(today)
# print(timestamp)

email = 'test@test.com'
if validate_email(email):
    print('Email is valid')
else:
    print('Email is bad')
