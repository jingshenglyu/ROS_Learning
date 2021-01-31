'''
Author: Jingsheng Lyu
Date: 2021-01-31 23:14:37
LastEditors: Jingsheng Lyu
LastEditTime: 2021-01-31 23:29:13
FilePath: /ROS_Learning/demo_py/conditionals.py
Github: https://github.com/jingshenglyu
Web: https://jingshenglyu.github.io/
E-Mail: jingshenglyu@gmail.com
'''
x = 3
y = 50

# Simple if
if x > y:
    print(f'{x} is greater than {y}')
else:
    print(f'{x} is less than {y}')

# elif
if x > y:
    print(f'{x} is greater than {y}')
elif x == y:
    print(f'{x} is equal to {y}')
else:
    print(f'{x} is less than {y}')

# Nested if
if x > 2 and x <= 10:  # or, not are available
    print(f'{x} is greater than 2 and less than or equal 10')

# Membership Operators(in, not in)
numbers = [1, 2, 3, 4, 5]

# in or not in
if x in numbers:
    print(x in numbers)

# Identity Operators (is , not is)
if x is y:
    print(x is y)
else:
    print(x is not y)
