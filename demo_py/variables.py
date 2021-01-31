'''
Author: Jingsheng Lyu
Date: 2021-01-31 21:00:23
LastEditors: Jingsheng Lyu
LastEditTime: 2021-01-31 21:06:05
FilePath: /ROS_Learning/demo_py/variables.py
Github: https://github.com/jingshenglyu
Web: https://jingshenglyu.github.io/
E-Mail: jingshenglyu@gmail.com
'''

x = 1           # int
y = 2.5         # float
name = 'John'   # str
is_cool = True  # bool

# multi assignment

xx, yy, namename, is_cool_is_cool = (11, 22.55, 'John Smith', True)

# print

print(xx, yy, name, is_cool)

# basic math

a = x + y

# casting
x = str(x)
y = int(y)

print('type of y:', type(y))