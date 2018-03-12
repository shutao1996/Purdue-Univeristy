
def filterByLetter(sentence, c):
    list = []
    word = sentence.split()
    for item in word:
        if c in item:
            num = len(item)
            if c == item[0] or c == item[num-1]:
                if item not in list:
                  list.append(item)
    return list

def getCumulativeSum():
    list = []
    sum = 0
    for i in range(1,101):
       for j in range(1,i+1):
           sum += j
       if(sum > 0):
           list.append(sum)
           sum = 0
    return list

#  s = 'the power of this engine matches that of the one we had last year'
  # print(filterByLetter(s, 'e'))

 #   print(getCumulativeSum())









