'''
Author: Jingsheng Lyu
Date: 2021-01-31 21:11:09
LastEditors: Jingsheng Lyu
LastEditTime: 2021-01-31 21:18:54
FilePath: /ROS_Learning/demo_py/strings.py
Github: https://github.com/jingshenglyu
Web: https://jingshenglyu.github.io/
E-Mail: jingshenglyu@gmail.com
'''
name = 'Brad'
age = 28

# concatenate
print('Hello, my name is ' + name + '. And I am ' + str(age))

# String Formatting
# Arguments by position
print('My name is {name} and I am {age}'.format(name=name, age=age))

# F-Strings (only for python version 3.6+)
print(f'Hello, my name is {name} and I am {age}')

s = 'hello world'

# Capitalize string
print(s.capitalize())  # The first letter is capitalized

print(len(s))   # get length

print(s.count(s))   # count the string

print(s.startswith('hello'))    # start with? return bool

print(s.endswith('hello'))      # end with? return bool

# ... other python string method is here.
# https://www.w3schools.com/python/python_ref_string.asp