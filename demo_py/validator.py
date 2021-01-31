'''
Author: Jingsheng Lyu
Date: 2021-02-01 00:19:53
LastEditors: Jingsheng Lyu
LastEditTime: 2021-02-01 00:23:00
FilePath: /ROS_Learning/demo_py/validator.py
Github: https://github.com/jingshenglyu
Web: https://jingshenglyu.github.io/
E-Mail: jingshenglyu@gmail.com
'''
# Example custom module

import re


def validate_email(email):
    if len(email) > 7:
        return bool(re.match("^.+@(\[?)[a-zA-Z0-9-.]+.([a-zA-Z]{2,3}|[0-9]{1,3})(]?)$", email))
