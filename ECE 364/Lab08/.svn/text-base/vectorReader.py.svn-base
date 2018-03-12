import simpleVector

def loadVectors(fileName):
    lists = []
    with open(fileName, 'r') as file:
        data = file.readlines()
        for line in data:
            try:
                t = simpleVector.Vector(line)
                lists.append(t)
            except:
                lists.append(None)
    return lists

if __name__ == "__main__":
    print(loadVectors('values.txt'))
