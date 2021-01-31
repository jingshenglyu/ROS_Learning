'''
Author: Jingsheng Lyu
Date: 2021-02-01 00:25:04
LastEditors: Jingsheng Lyu
LastEditTime: 2021-02-01 00:26:40
FilePath: /ROS_Learning/demo_py/classes.py
Github: https://github.com/jingshenglyu
Web: https://jingshenglyu.github.io/
E-Mail: jingshenglyu@gmail.com
'''
# Create class


class User:
    # Constructor
    def __init__(self, name):
        self.name = name


# init  user object
brad = User('Brad Traversy')

print(type(brad))
