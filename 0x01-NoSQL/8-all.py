#!/usr/bin/env python3
"""function that lists all documents in a collection"""
from pymongo import MongoClient
import pprint


def list_all(mongo_collection):
    """lists all documents in a collection
    Return an empty list if no document in the collection"""
    if mongo_collection is None:
        return []
    for i in mongo_collection.find():
        return (i)
