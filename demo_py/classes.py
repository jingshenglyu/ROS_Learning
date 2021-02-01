'''
Author: Jingsheng Lyu
Date: 2021-02-01 00:25:04
LastEditors: Jingsheng Lyu
LastEditTime: 2021-02-01 22:41:39
FilePath: /ROS_Learning/demo_py/classes.py
Github: https://github.com/jingshenglyu
Web: https://jingshenglyu.github.io/
E-Mail: jingshenglyu@gmail.com
'''
# Create class


class User:
    # Constructor
    def __init__(self, name, email, age):
        self.name = name
        self.email = email
        self.age = age

    def greeting(self):
        return(f'My name is {self.name} and I am {self.age}')

    def has_birthday(self):
        self.age += 1

# Extend class


class Customer(User):
    # Constructor
    def __init__(self, name, email, age):
        self.name = name
        self.email = email
        self.age = age

    def set_balance(self, balance):
        self.balance = balance

    def greeting(self):
        return(f'My name is {self.name} and I am {self.age} and my balance is {self.balance}.')


# init  user object
brad = User('Brad Traversy', 'brad@gmail.com', 30)

print(type(brad))
print(brad.name)
print(brad.greeting())

# has a birthday
brad.has_birthday()
print(brad.greeting())

# init customer object
janet = Customer('Janet Johnson', 'janet@yahoo.com', 25)

janet.set_balance(500)
print(janet.greeting())
