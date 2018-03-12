#! /usr/bin/env python3.4

import os

def identifyAccess():
    dic = {}
    for filename in os.listdir("Departments"):
        with open('./Departments/' + filename, 'r') as thing:
            content = thing.read().splitlines()
            for i in content:
                dic[i] = []
    for filename in os.listdir("Departments"):
        with open('./Departments/' + filename, 'r') as thing:
            contents = thing.read().splitlines()
            for i in contents:
                dic[i].append(filename[:-4])

    for Key in dic.keys():
        dic[Key].sort()
    return dic

def getCommon(name1, name2):
    dic = identifyAccess()
    if name1 not in dic.keys() or name2 not in dic.keys():
        return None
    a = set(dic[name1])
    b = set(dic[name2])
    c = a.intersection(b)

    return c

if __name__ == "__main__":
    map =identifyAccess()
    #print(map['Selma Zinck'])
    print(getCommon('Merideth Kind','Melba Gist'))