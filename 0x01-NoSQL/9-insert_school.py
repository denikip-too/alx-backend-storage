#!/usr/bin/env python3
"""inserts a new document in a collection"""


def insert_school(mongo_collection, **kwargs):
    """function that inserts a new document in a collection"""
    return (mongo_collection.insert(kwargs))
