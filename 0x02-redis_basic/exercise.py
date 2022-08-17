#!/usr/bin/env python3
"""Writing strings to Redis"""
import redis
import uuid
from functools import wraps
from typing import Union


"""def count_calls(func):
        decorator
        @wraps(func)
        def __qualname__():
            dunder method"""


class Cache:
    """Cache class"""

    def __init__(self):
        """store an instance of the Redis client as a private variable named
        _redis (using redis.Redis()) and flush the instance using flushdb"""
        self._redis = redis.Redis()
        self._redis.flushdb()

    """@count_calls"""
    def store(self, data: Union[str, bytes, int, float]) -> str:
        """method that takes a data argument and returns a string"""
        r = str(uuid.uuid1())
        self._redis.set(r, data)
        return (r)

    def get(self, key, fn = 'fn'):
        """will be used to convert the data back to the desired format"""
        if key is None:
            return (self._redis)
        return (self._redis)

    def get_str(self):
        """will automatically parametrize Cache.get to str"""
        return (str(Cache.get))

    def get_int(self):
        """will automatically parametrize Cache.get to int"""
        return (int(Cache.get))
