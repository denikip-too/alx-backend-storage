#!/usr/bin/env python3
"""Writing strings to Redis"""
import redis
import uuid


class Cache:
    """Cache class"""

    def __init__(self):
        """store an instance of the Redis client as a private variable named
        _redis (using redis.Redis()) and flush the instance using flushdb"""
        _redis = redis.Redis()
        _redis.flushdb()

    def store(self, data: [str, bytes, int, float]) -> str:
        """method that takes a data argument and returns a string"""
        self.data = uuid.uuid1()
        return (str(self.data))
