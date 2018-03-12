class Vector:
    def __init__(self, cord):
        temp = cord.split()
        self.x = float(temp[0])
        self.y = float(temp[1])

if __name__ == "__main__":
    print(Vector('3.41 2.42'))