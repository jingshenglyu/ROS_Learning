'''
Author: Jingsheng Lyu
Date: 2021-01-31 22:17:58
LastEditors: Jingsheng Lyu
LastEditTime: 2021-01-31 22:24:09
FilePath: /ROS_Learning/demo_py/tuple_set.py
Github: https://github.com/jingshenglyu
Web: https://jingshenglyu.github.io/
E-Mail: jingshenglyu@gmail.com
'''
# Tuple: a collection (ordered, unchangeable, allow duplicate)

# Set: a collection (which unordered, unindexed, no duplicate)

fruits = ('Apple', 'Oranges', 'Grapes')
# fruits = tuple(('Apple', 'Oranges', 'Grapes'))

# Single value needs trailing comma
fruits2 = ('Apples', )

# Get value
print(fruits[1])

# Can't change value
# fruits[0] = 'Pears'
# TypeError: 'tuple' object does not support item assignment

# Delete tuple
del fruits2
fruits2 = ('Apples', )

# Get length
print(len(fruits2))

# Set

# Create a set
fruits_set = {'Apples', 'Oranges', 'Mango'}

# Check if in set
print('Apple' in fruits_set)

# Add to set
fruits_set.add('Grape')

# Remove from set
fruits_set.remove('Grape')
print(fruits_set)

# Clear set
fruits_set.clear()
print(fruits_set)