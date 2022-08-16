#!/usr/bin/env python3
"""returns all students sorted by average score"""


def top_students(mongo_collection):
    """function that returns all students sorted by average score"""
    return (mongo_collection.sort({ $group: { averageScore: { $avg: "score"} } })
