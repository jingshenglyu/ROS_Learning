'''
Author: Jingsheng Lyu
Date: 2021-02-01 23:01:43
LastEditors: Jingsheng Lyu
LastEditTime: 2021-02-01 23:02:01
FilePath: /ROS_Learning/demo_py/my_json.py
Github: https://github.com/jingshenglyu
Web: https://jingshenglyu.github.io/
E-Mail: jingshenglyu@gmail.com
'''
# JSON is data API

import json

# Sample
userJSON = '{"first_name": "John", "last_name": "Doe", "age": 30}'

# Parse to dict
user = json.loads(userJSON)

print(user)
print(user['first_name'])

car = {'make': 'Ford', 'model': 'Mustang', 'year': 1970}

carJSON = json.dumps(car)

print(carJSON)
