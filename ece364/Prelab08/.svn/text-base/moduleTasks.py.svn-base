from exModule import runNetworkCode
import re
from pathlib import Path

def checkNetwork(**kwargs):
    try:
        runNetworkCode(**kwargs)
    except ConnectionError:
        raise
    except OSError as e:
        return "An issue encountered during runtime. The name of the error is: {}".format(type(e).__name__)
    except:
        return False
    else:
        return True


def isOK(signalName):
    expr = r"^[A-Z]{3}\-[0-9]{3}$"
    match = re.findall(expr, signalName)
    if match:
        return True
    else:
        return False


def loadDataFrom(signalName, folderName):
    fl = 0; lists = []
    if not isOK(signalName):
        raise ValueError("{} is invalid.".format(signalName))
    else:
        op_file = folderName + '/' + signalName + '.txt'
        check_file = Path(op_file)
        if not check_file.is_file():
            raise OSError("{0}.txt is not contained in the {1} folder.".format(signalName, folderName))
    with open(op_file, 'r') as file:
        data = file.read().splitlines()
        for k in data:
            try:
                lists.append(float(k))
            except:
                fl += 1
    res = (lists, fl)
    return res


def isBounded(signalValues, bounds, threshold):
    out = 0
    if not signalValues:
        raise ValueError("Signal contains no data.")
    mins, maxs = bounds
    for k in signalValues:
        if not mins <= k <= maxs:
            out += 1
    if out <= threshold:
        return True
    else:
        return False


if __name__ == "__main__":
    result = loadMultiple(['AFW-481', 'SWE-314','HQP-689','CIG-308','FPT-701'], 'Signals', 10)
    print(result)
    saveData(result, 'result_Signals',(-10.0, 15), 100)
















