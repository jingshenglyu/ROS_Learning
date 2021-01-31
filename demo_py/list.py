'''
Author: Jingsheng Lyu
Date: 2021-01-31 21:23:06
LastEditors: Jingsheng Lyu
LastEditTime: 2021-01-31 22:00:24
FilePath: /ROS_Learning/demo_py/list.py
Github: https://github.com/jingshenglyu
Web: https://jingshenglyu.github.io/
E-Mail: jingshenglyu@gmail.com
'''
# Create list
numbers = [1, 2, 3, 4, 5]   
# It is the same as `numbers = list((1, 2, 3, 4, 5))`

# Strings list
fruits = ['Apples', 'Oranges', 'Grapes', 'Pears']

# Get a value
print(fruits[1])

# get length
print(len(fruits))
#print(fruits.__len__())

# Append to list
fruits.append('Mangos')

# Remove from list
fruits.remove('Grapes')

# Insert into position
fruits.insert(2, 'Strawberries')

# Change value
fruits[0] = 'Blueberries'

# Remove with pop
print(fruits.pop(2))

# Sort list
fruits.sort()
print(fruits)

# Reverse sort
fruits.sort(reverse=True)
print(fruits)

