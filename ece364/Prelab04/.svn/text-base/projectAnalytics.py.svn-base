#! /usr/bin/env python3.4

import os
import sys
from pprint import pprint as pp

def getComponentCountByProject(projectID):
    res = 0; ind = 0; cap = 0; tran = 0
    flag = 0
    arr = []
    with open('projects.txt', 'r') as File:
        lines = File.readlines()
        for item in lines[2:]:
            item = item.split()
            if (item[1].strip()) == projectID:
                flag = 1
                circuit = item[0].strip()
                with open('Circuits/circuit_' + circuit + '.txt', 'r') as doc:
                    content = doc.readlines()
                    data = content[4].split(',')
                    for i in data:
                        i = i.strip()
                        arr.append(i)
                        key = set(arr)
    for gg in key:
        if gg[0] is 'R':
            res += 1
        elif gg[0] is 'L':
            ind += 1
        elif gg[0] is 'C':
            cap += 1
        elif gg[0] is 'T':
            tran += 1
    if flag == 0:
        return None
    component = (res, ind, cap, tran)
    return component

def getComponentCountByStudent(studentName):
    res = 0; ind = 0; cap = 0; tran = 0
    flag = 0; see = 0; arr = []
    with open('students.txt', 'r') as File:
        lines = File.readlines()
        for item in lines[2:]:
            item = item.split('|')
            name = item[0].strip()
            if name == studentName:
                flag = 1
                sid = item[1].strip()
    if flag == 0:
        return None
    for filename in os.listdir("Circuits"):
        with open("./Circuits/" + filename, "r") as thing:
            check = thing.readlines()
            data = check[1].split(',')
            for i in data:
                i = i.strip()
                if i == sid:
                  #  print(filename)
                    see = 1
                    data = check[4].split(',')
                    for j in data:
                        j = j.strip()
                        arr.append(j)
                        key = set(arr)
    for g in key:
        if g[0] is 'R':
            res += 1
        elif g[0] is 'L':
            ind += 1
        elif g[0] is 'C':
            cap += 1
        elif g[0] is 'T':
            tran += 1
    if see == 0:
        component = ()
        return component
    component = (res, ind, cap, tran)
    return component

def getParticipationByStudent(studentName):
    flag = 0; see = 0; sets = []
    with open('students.txt', 'r') as File:
        lines = File.readlines()
        for item in lines[2:]:
            item = item.split('|')
            name = item[0].strip()
            if name == studentName:
                flag = 1
                sid = item[1].strip()
                #print(sid)
    if flag == 0:
        return None
    for filename in os.listdir("./Circuits"):
        with open("./Circuits/" + filename, "r") as thing:
            check = thing.readlines()
            data = check[1].split(',')
            for i in data:
                i = i.strip()
                if i == sid:
                    #print(i, filename)
                    see = 1
                    with open('projects.txt', 'r') as file:
                        lines = file.readlines()
                        for item in lines[2:]:
                            item = item.split()
                            n = item[0].strip()
                            m = item[1].strip()
                            if n in filename:
                                sets.append(m)
                                #print(sets)
    if see == 0:
        component = {}
        return component
    component = set(sets)
    return component

def getParticipationByProject(projectID):
    flag = 0; sets = []
    with open('projects.txt', 'r') as file:
        lines = file.readlines()
        for item in lines[2:]:
            item = item.split()
            if (item[1].strip()) == projectID:
                flag = 1
                circuit = item[0].strip()
                with open('Circuits/circuit_' + circuit + '.txt', 'r') as doc:
                    content = doc.readlines()
                    sid = content[1].split(',')
                    for i in sid:
                        i = i.strip()
                        with open('students.txt', 'r') as File:
                            lines = File.readlines()
                            for items in lines[2:]:
                                items = items.split('|')
                                name = items[0].strip()
                                j = items[1].strip()
                                if i == j:
                                    sets.append(name)
    if flag == 0:
        return None
    names = set(sets)
    return names

def getProjectByComponent(components):
    lists = []; dic = {}
    for comp in components:
        for filename in os.listdir("Circuits"):
            with open("./Circuits/" + filename, "r") as thing:
                content = thing.readlines()
                data = content[4].split(',')
                for i in data:
                    i = i.strip()
                    if comp == i:
                        with open('projects.txt', 'r') as file:
                            lines = file.readlines()
                            for item in lines[2:]:
                                item = item.split()
                                if item[0] in filename:
                                    lists.append(item[1])
        sets = set(lists)
        dic[comp] = sets
    return dic

def getStudentByComponent(components):
    lists = []; dic = {}
    for comp in components:
        for filename in os.listdir("Circuits"):
            with open("./Circuits/" + filename, "r") as thing:
                content = thing.readlines()
                data = content[4].split(',')
                sid = content[1].split(',')
                for i in data:
                    i = i.strip()
                    if comp == i:
                        for j in sid:
                            j = j.strip()
                            with open('students.txt', 'r') as file:
                                lines = file.readlines()
                                for item in lines[2:]:
                                    item = item.split('|')
                                    items = item[1].strip()
                                    if items == j:
                                        lists.append(item[0].strip())
        sets = set(lists)
        dic[comp] = sets
    return dic

def getComponentByStudent(studentNames):
    lists = []; dic = {}
    with open('students.txt', 'r') as file:
        lines = file.readlines()
        for item in lines[2:]:
            item = item.split('|')
            names = item[0].strip()
            if names == studentNames:
                sid = item[1].strip()
                for filename in os.listdir("Circuits"):
                    with open("./Circuits/" + filename, "r") as thing:
                        content = thing.readlines()
                        data = content[4].split(',') #components
                        cir_sid = content[1].split(',') #student ID
                        for i in cir_sid:
                            i = i.strip()
                            if i == sid:
                                for j in data:
                                    j = j.strip()
                                    lists.append(j)
    sets = set(lists)
    dic[studentNames] = sets
    return dic

def getCommonByProject(projectID1, projectID2):
    flag1 = 0; flag2 = 0; list1 = []; list2 = []
    with open('projects.txt', 'r') as file:
        lines = file.readlines()
        for item in lines[2:]:
            item = item.split()
            circuit = item[0].strip()
            id = item[1].strip()
            if projectID1 == id:
                flag1 = 1
                for filename in os.listdir("Circuits"):
                    with open("./Circuits/" + filename, "r") as thing:
                        content = thing.readlines()
                        if circuit in filename:
                            data = content[4].split(',') #components
                            for i in data:
                                i = i.strip()
                                list1.append(i)
        list3 = set(list1)
        #print(len(list3))########
        for items in lines[2:]:
            items = items.split()
            circuits = items[0].strip()
            ids = items[1].strip()
            if projectID2 == ids:
                flag2 = 1
                for files in os.listdir("Circuits"):
                    with open("./Circuits/" + files, "r") as one:
                        mg = one.readlines()
                        if circuits in files:
                            t = mg[4].split(',') #components
                            for j in t:
                                j = j.strip()
                                for k in list3:
                                    if k == j:
                                        list2.append(j)
        if (flag1 == 0) or (flag2 == 0):
            return None

    list4 = set(list2)
    #print(len(list4))
    lists = list(list4)
    #print(len(lists))#########
    lists.sort()
    return lists

def getCommonByStudent(studentName1, studentName2):
    flag1 = 0; flag2 = 0; list1 = []; list2 = []
    with open('students.txt', 'r') as file:
        lines = file.readlines()
        for item in lines[2:]:
            item = item.split('|')
            name = item[0].strip()
            id = item[1].strip()
            if studentName1 == name:
                flag1 = 1
                for filename in os.listdir("Circuits"):
                    with open("./Circuits/" + filename, "r") as thing:
                        content = thing.readlines()
                        check = content[1].split(',')
                        for name_id in check:
                            name_id = name_id.strip()
                            if id == name_id:
                                data = content[4].split(',') #components
                                for i in data:
                                    i = i.strip()
                                    list1.append(i)
        list3 = set(list1)
        #print(len(list3))########
        #print(list3)
        for items in lines[2:]:
            items = items.split('|')
            names = items[0].strip()
            ids = items[1].strip()
            if studentName2 == names:
                flag2 = 1
                for files in os.listdir("Circuits"):
                    with open("./Circuits/" + files, "r") as one:
                        mg = one.readlines()
                        checks = mg[1].split(',')
                        for names_id in checks:
                            names_id = names_id.strip()
                            if ids == names_id:
                                t = mg[4].split(',') #components
                                for j in t:
                                    j = j.strip()
                                    for k in list3:
                                        if k == j:
                                            list2.append(j)
        #print(flag1, flag2)
        if (flag1 == 0) or (flag2 == 0):
            return None

    list4 = set(list2)
    #print(len(list4))
    lists = list(list4)
    #print(len(lists))#########
    lists.sort()
    return lists

def getProjectByCircuit():
    list1 = []; array = []; dic = {}
    with open('projects.txt', 'r') as file:
        lines = file.readlines()
        for item in lines[2:]:
            item = item.split()
            circuit = item[0].strip()
            list1.append(circuit)
        lists = set(list1)
        for i in lists:
            for items in lines[2:]:
                items = items.split()
                project = items[1].strip()
                circuits = items[0].strip()
                if i == circuits:
                    array.append(project)
            arr = set(array)
            list4 = list(arr)
            list4.sort()
            dic[i] = list4
    return dic

def getCircuitByStudent():
    list1 = []; dic = {}
    with open('students.txt', 'r') as file:
        lines = file.readlines()
        for item in lines[2:]:
            item = item.split('|')
            name = item[0].strip()
            ids = item[1].strip()
            for filename in os.listdir("Circuits"):
                with open("./Circuits/" + filename, "r") as thing:
                    content = thing.readlines()
                    check = content[1].split(',')
                    for i in check:
                        i = i.strip()
                        if i == ids:
                            value = filename[8:13]
                            list1.append(value)
            mg = set(list1)
            xg = list(mg)
            xg.sort()
            dic[name] = xg
    return dic

def getCircuitByStudentPartial(studentName):
    new_dic = {}
    flag = 0
    dic = getCircuitByStudent()
    for key, value in dic.items():
        item = key.split(',')
        last = item[0].strip()
        first = item[1].strip()
        if studentName == last or studentName == first:
            flag = 1
            new_dic[key] = value
    if flag == 0:
        return None
    return new_dic

#if __name__ == "__main__":
    #print(getComponentCountByProject('082D6241-40EE-432E-A635-65EA8AA374B6')) #1
    #print(getComponentCountByStudent('Adams, Keith')) #2
    #print(len(getParticipationByStudent('Adams, Keith')))  #3
    #print(len(getParticipationByProject('082D6241-40EE-432E-A635-65EA8AA374B6')))   #4
    #components = {"R19.323", "R88.725"}
    #result = getProjectByComponent(components)
    #print(len(result['R88.725']))    #5
    #print("task 6:")
    #result = getStudentByComponent(components)
    #print(len(result['R88.725']))   #6
    #print("task 7:")
    #nameSet = ('Adams, Keith')
    #result = getComponentByStudent(nameSet)
    #print(result)
    #print(len(result['Adams, Keith']))  #7
    #8:

    #print(getCommonByProject('082D6241-40EE-432E-A635-65EA8AA374B6', '082D6241-40EE-432E-A635-65EA8AA374B6'))
    #print(getCommonByProject('082D6241-40EE-432E-A635-65EA8AA374B6', '90BE0D09-1438-414A-A38B-8309A49C02EF'))
    #9:
    #print(getCommonByStudent('Anderson, Debra', 'Alexander, Carlos'))
    #10:
    #print("task 10:")
    #result = getProjectByCircuit()
    #print(result)
    #print(getProjectByCircuit())
    #11:
    #print(getCircuitByStudent())
    #12:
    #print(getCircuitByStudentPartial('Carlos'))