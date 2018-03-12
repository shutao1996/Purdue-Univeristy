import moduleTasks


def loadMultiple(signalNames, folderName, maxCount):
    dic = {}
    for k in signalNames:
        try:
            lists, fl = moduleTasks.loadDataFrom(k, folderName)
            if fl <= maxCount:
                dic[k] = lists
            else:
                dic[k] = []
        except:
            dic[k] = None
    return dic


def saveData(signalsDictionary, targetFolder, bounds, threshold):
    for files, values in signalsDictionary.items():
        path = targetFolder + '/' + files + '.txt'
        try:
            if values and values != []:
                if moduleTasks.isBounded(values, bounds, threshold):
                    with open(path, 'w') as file:
                        file.write("{:.3f}".format(values[0]))
                        for items in values[1:]:
                            file.write("\n{:.3f}".format(items))
        except ValueError:
            continue
    return None


if __name__ == "__main__":
    result = loadMultiple(['AFW-481', 'SWE-314','HQP-689','CIG-308','FPT-701'], 'Signals', 10)
    print(result)
    saveData(result, 'result_Signals',(-10.0, 15), 100)
