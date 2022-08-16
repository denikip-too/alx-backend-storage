#!/usr/bin/env python3
"""function that lists all documents in a collection"""


def list_all(mongo_collection):
    """lists all documents in a collection
    Return an empty list if no document in the collection"""
    if mongo_collection.find() is None:
        return []
    return (mongo_collection.find())
