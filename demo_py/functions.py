'''
Author: Jingsheng Lyu
Date: 2021-01-31 22:58:28
LastEditors: Jingsheng Lyu
LastEditTime: 2021-01-31 23:05:14
FilePath: /ROS_Learning/demo_py/functions.py
Github: https://github.com/jingshenglyu
Web: https://jingshenglyu.github.io/
E-Mail: jingshenglyu@gmail.com
'''
# Create functions


def sayHello(name):
    print(f'Hello {name}')


sayHello('John Smith')

# Return values


def getSum(num1, num2):
    total = num1 + num2

    return total


num = getSum(3, 4)
print(num)


# A lambda function
# GetSum = lambda num1, num2: num1 + num2 # a small anonymous function
def GetSum(num1, num2): return num1 + num2  # a small anonymous function


Num = GetSum(10, 3)
print(Num)
