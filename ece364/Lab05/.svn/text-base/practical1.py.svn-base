
def getHorizontalMax():
    arr = []; dic={};lists =[]
    with open('square.txt', 'r') as file:
        lines = file.readlines()
        for i in lines:
            i = i.split()
            for items in range(17):
                    largest = int(i[items]) * int(i[items+1]) * int(i[items+2]) * int(i[items+3])
                    arr.append(largest)
                    num = [i[items], i[items+1], i[items+2], i[items+3]]
                    dic[largest] = num
            arr.sort()
            lists.append(arr[16])
        lists.sort()
    final = (lists[19], dic[lists[19]])
    return final

def getVerticalMax():
    arr = []; dic={};lists =[];g=0; yy=[]
    with open('square.txt', 'r') as file:
        lines = file.readlines()
        for i in lines:
            i = i.split()
            lists.append(i)
        for k in range(19):
            for g in range(17):
                z=int(lists[g+1][k]);x=int(lists[g+2][k]);c=int(lists[g+3][k]);a=int(lists[g][k])
                num = [lists[g][k],lists[g+1][k],lists[g+2][k],lists[g+3][k]]
                largest = z*x*c*a
                arr.append(largest)
                dic[largest] = num
            arr.sort()
            ii = arr[16]
            yy.append(ii)
        yy.sort()

    final = (yy[16], dic[yy[16]])
    return final

if __name__ == "__main__":
    #print(getHorizontalMax())
    print(getVerticalMax())