'''
Author: Jingsheng Lyu
Date: 2021-01-31 23:40:26
LastEditors: Jingsheng Lyu
LastEditTime: 2021-01-31 23:49:38
FilePath: /ROS_Learning/demo_py/loops.py
Github: https://github.com/jingshenglyu
Web: https://jingshenglyu.github.io/
E-Mail: jingshenglyu@gmail.com
'''

people = ['John', 'Paul', 'Sara', 'Susan']

# Simple for loop
for person in people:
    print(f'Current Person: {person}')

# Break
for person in people:
    if person == 'Sara':
        break
    print(f'Current Person: {person}')

# Continue
for person in people:
    if person == 'Sara':
        continue
    print(f'Current Person: {person}')

# range
for i in range(len(people)):
    print(people[i])

for i in range(0, 11):
    print(f'Number: {i}')


# While loops

count = 0
while count < 10:
    print(f'Count: {count}')
    cout += 1
