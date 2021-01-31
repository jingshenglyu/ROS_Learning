'''
Author: Jingsheng Lyu
Date: 2021-01-31 22:58:28
LastEditors: Jingsheng Lyu
LastEditTime: 2021-01-31 22:59:08
FilePath: /ROS_Learning/demo_py/dictionary.py
Github: https://github.com/jingshenglyu
Web: https://jingshenglyu.github.io/
E-Mail: jingshenglyu@gmail.com
'''

# Create dict
person = {
    'first_name': 'John',
    'last_name': 'Smith',
    'age': 28
}
# person = dict('first_name'= 'John', 'last_name'= 'Smith', 'age'= 28)

print(person, type(person))

# Get value
print(person['first_name'])

print(person.get('last_name'))

# Add key/value
person['phone'] = '123-4567890'

# Get dict keys
print(person.keys())

# Get dict items
print(person.items())

# Copy dict
person2 = person.copy()
person2['city'] = 'Boston'

# Remove item
del(person['age'])
person.pop('phone')

# clear
# person.clear()
# print(person) # You will get {}

# Get length
print(len(person2))

# List of dict
people = [
    {'name': 'Martha', 'age': 30},
    {'name': 'Kevin', 'age': 25}
]

print(people[1]['name'])
