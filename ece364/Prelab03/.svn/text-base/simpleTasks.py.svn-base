#! /usr/bin/env python3.4

def find(pattern):
    with open('sequence.txt', 'r') as File:
        content = File.read()
        list = []
        push = ''
        n = len(pattern)
        q = len(content)
        m = 0
        count = 0
        contents = [str(k) for k in str(content)]
        patterns = [str(g) for g in str(pattern)]
        for item in contents:
            for element in patterns:
                if m == 0:
                    i = count
                if i >= q:
                    break
                if contents[i] == element or element == 'X':
                    push += str(contents[i])
                    m += 1
                    i += 1
                    if n == m:
                        m = 0
                        list.append(''.join(push))
                        push = ''
                else:
                    m = 0
                    push = ''
                    break
            count += 1
    return list

def getStreakProduct(sequence, maxSize, product):
    sequence = [int(k) for k in str(sequence)]
    push = ''
    list = []
    i = 1
    count = 1
    n = 0
    times = sequence[0]
    push += str(sequence[0])
    for item in sequence:
        for element in sequence:
            if i == len(sequence):
                break
            times = sequence[i] * times
            if times <= product and n <= maxSize:
                push += str(sequence[i])
                i += 1
                n += 1
                if times == product:
                    list.append("".join(push))
                    push = ''
                    times = sequence[count]
                    push += str(times)
                    i = count + 1
                    n = 0
                    break
            else:
                push = ''
                times = sequence[count]
                i = count + 1
                push += str(times)
                n = 0
                break
        count += 1
    return list

def writePyramids(filePath, baseSize, count, char):
    with open(filePath,'w') as File:
        mid = int(baseSize / 2)
        for i in range(mid + 1):
            odd = i * 2 + 1
            prints = char * odd
            space = ' ' * int(0.5 * (baseSize - odd))
            content = space + prints + space
            contents = ''
            for j in range(count):
                contents += content
                if j == (count - 1):
                    contents += '\n'
                    break
                else:
                    contents += ' '
            File.write(contents)

def getStreaks(sequence, letters):
    list = []
    push = ''
    n = 0
    sequence = [str(k) for k in str(sequence)]
    letters = [str(g) for g in str(letters)]
    for i in sequence:
        n += 1
        for j in letters:
            if i == j and n <= len(sequence):
                push += str(i)
                if n == len(sequence) or i != sequence[n]:
                    list.append(push)
                    push = ''
                    break
                break
    return list

def findNames(nameList, part, name):
    list = []
    name = name.lower()
    for i in nameList:
        parts = i.split()
        if "F" in part:
            if parts[0].lower() == name:
                list.append(i)
        if "L" in part:
            if parts[1].lower() == name:
                list.append(i)
    return list

def convertToBoolean(num, size):
    list = []
    if(type(num) != int or type(size) != int):
        return []
    num = str(bin(num))
    num = str(num[2:])
    if size > len(num):
        zero = size - len(num)
        zero = zero * '0'
        num = str(zero + num)
    for bi in num:
        if bi == '0':
            list.append(bool(0))
        else:
            list.append(bool(1))
    return list

def convertToInteger(boolList):
    if type(boolList) is not list:
        return None
    for i in boolList:
        if type(i) != bool:
            return None
    if not boolList:
        return None
    lists = ''
    for j in boolList:
        if bool(j):
            lists += '1'
        else:
            lists += '0'
    lists = int(lists, 2)
    return lists

if __name__ == "__main__":
    print(find('1XX7')) #test case 1

    #print(getStreakProduct(14822, 3, 32)) #test case 2

    #writePyramids('test_15.txt', 15, 5, '*') #test case 3

    #print(getStreaks('AAASSSSSSAPPPSSPPBBCCCSSS', 'PAZ')) #test case 4

    #test case 5
    #names = ["George Smith", "Mark Johnson", "Cordell Theodore", "Maria Satterfield","Johnson Cadence"]
    #print(findNames(names, "FL", "Johnson"))

    #print(convertToBoolean('x', 3)) #test case 6

    #test case 7
    #bList = [False, False, True, False, False, True]
    #print(convertToInteger(bList))

