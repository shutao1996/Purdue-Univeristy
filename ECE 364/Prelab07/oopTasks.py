from enum import Enum
import random


class Level(Enum):
    freshman = 1
    sophomore = 2
    junior = 3
    senior = 4


class Student:
    def __init__(self, ID, firstName, lastName, level):
        self.ID = ID
        self.firstName = firstName
        self.lastName = lastName
        if not isinstance(level, Level):
            raise TypeError("The argument must be an instance of the 'Level' Enum.")
        self.level = level

    def __str__(self):
        strings = self.ID + ', ' + self.firstName + ' ' + self.lastName + ', ' + self.level.name.title()
        return strings


class Circuit:
    def __init__(self, ID, resistors, capacitors, inductors, transistors):
        self.ID = ID
        if resistors:
            for i in resistors:
                if i[0] != 'R':
                    raise ValueError("The resistors' list contain invalid components")
        self.resistors = resistors
        if capacitors:
            for i in capacitors:
                if i[0] != 'C':
                    raise ValueError("The capacitors' list contain invalid components")
        self.capacitors = capacitors
        if inductors:
            for i in inductors:
                if i[0] != 'L':
                    raise ValueError("The inductors' list contain invalid components")
        self.inductors = inductors
        if transistors:
            for i in transistors:
                if i[0] != 'T':
                    raise ValueError("The transistors' list contain invalid components")
        self.transistors = transistors

    def __str__(self):
        if len(self.resistors) < 10:
            r = '0' + str(len(self.resistors))
        else:
            r = len(self.resistors)
        strings = "{0}: (R = {1}, C = {2:0>2d}, L = {3:0>2d}, T = {4:0>2d})".format(
            self.ID, r, len(self.capacitors), len(self.inductors), len(self.transistors))
        return strings

    def getDetails(self):
        r = sorted(self.resistors)
        c = sorted(self.capacitors)
        i = sorted(self.inductors)
        t = sorted(self.transistors)
        strings = self.ID + ": "
        for g in r:
            strings += g + ', '
        for g in c:
            strings += g + ', '
        for g in i:
            strings += g + ', '
        for g in t:
            strings += g + ', '
        return strings[:-2]

    def __contains__(self,element):
        if not isinstance(element,str):
            raise TypeError("The 'element' component in the Circuit must be a string ")
        check = ['R','C','L','T']
        if element[0] not in check:
            raise TypeError("{0} must be one of the known types".format(element))
        return (element in self.resistors) or (element in self.capacitors) or (
                element in self.inductors) or (element in self.transistors)

    def __add__(self, other):
        num = str()
        if isinstance(other,Circuit):
            temp = random.sample(range(10), 5)
            for k in temp:
                num += str(k)
            print(num)
            r = sorted(self.resistors + other.resistors)
            c = sorted(self.capacitors + other.capacitors)
            i = sorted(self.inductors + other.inductors)
            t = sorted(self.transistors + other.transistors)
            print(r,c,i,t)
            return Circuit(num, r, c, i, t)
        elif isinstance(other, str):
            check = ['R', 'C', 'L', 'T']
            if other[0] not in check:
                raise TypeError("{0} must be one of the known types of components".format(other))
            elif other in self:
                return self
            if other[0] == 'R':
                self.resistors.append(other)
            elif other[0] == 'C':
                self.capacitors.append(other)
            elif other[0] == 'L':
                self.inductors.append(other)
            elif other[0] == 'T':
                self.transistors.append(other)
            return self
        else:
            raise TypeError("The 'other' component is not a string nor a Circuit")

    def __radd__(self, other):
        return self.__add__(other)

    def __sub__(self, other):
        if isinstance(other, str):
            check = ['R', 'C', 'L', 'T']
            if other[0] not in check:
                raise TypeError("{0} must be one of the known types of components".format(other))
            elif other not in self:
                return self
            if other[0] == 'R':
                self.resistors.remove(other)
            elif other[0] == 'C':
                self.capacitors.remove(other)
            elif other[0] == 'L':
                self.inductors.remove(other)
            elif other[0] == 'T':
                self.transistors.remove(other)
            return self


class Project:
    def __init__(self, ID, participants, circuits):
        self.ID = ID
        if not participants:
            raise ValueError("Participants list is empty!")
        for key in participants:
            if not isinstance(key, Student):
                raise ValueError("Participants has invalid element:{} .".format(key))
        self.participants = participants
        if not circuits:
            raise ValueError("Circuits list is empty!")
        for i in circuits:
            if not isinstance(i, Circuit):
                raise ValueError("Circuits has invalid element:{} .".format(i))
        self.circuits = circuits

    def __str__(self):
        strings = "{0}: {1:0>2d} Circuits, {2:0>2d} Participants".format(
            str(self.ID), len(self.circuits), len(self.participants))
        return strings

    def getDetails(self):
        str_id = self.ID + '\n' + '\n'
        str_par = 'Participants:' + '\n'
        for i in self.participants:
            str_par += str(i) + '\n'
        str_par += '\n' + '\n'
        str_cir = 'Circuits:' + '\n'
        for k in self.circuits:
            str_cir += str(k.getDetails()) + '\n'
        return str_id + str_par + str_cir

    def __contains__(self, item):
        arr = []; lists = []
        if isinstance(item, Circuit):
            for cir in self.circuits:
                lists.append(cir.ID)
            return item.ID in lists
        elif isinstance(item, Student):
            if item in self.participants:
                return True
        elif isinstance(item, str):
            check = ['R', 'C', 'L', 'T']
            if item[0] not in check:
                raise TypeError("{0} must be one of the known types of components".format(item))
            for m in self.circuits:
                arr = m.resistors + m.capacitors + m.inductors + m.transistors
            sorted(arr)
            if item in arr:
                return True
            else:
                return False
        else:
            raise TypeError("The given 'item' has to be type Circuit, Student, String")

    def __add__(self, other):
        if isinstance(other, Circuit):
            if other in self.circuits:
                return self
            self.circuits.append(other)
            return self
        elif isinstance(other, Student):
            if other in self.participants:
                return self
            self.participants.append(other)
            return self
        else:
            raise TypeError("The 'other' in here must be a Circuit or Student")

    def __sub__(self, other):
        if isinstance(other, Circuit):
            if other not in self.circuits:
                return self
            self.circuits.remove(other)
            return self
        elif isinstance(other, Student):
            if other not in self.participants:
                return self
            self.participants.remove(other)
            return self
        else:
            raise TypeError("The 'other' in here must be a Circuit or Student")


class Capstone(Project):
    def __init__(self, ID, participants, circuits):
        Project.__init__(self, ID, participants, circuits)
        for i in self.participants:
            if 'senior' not in i.level.name:
                raise ValueError("Student {} is not a senior".format(str(i.firstName) + ', ' + str(i.lastName)))

    def __add__(self, other):
        Project.__add__(self, other)
        if isinstance(other, Student):
            if other.level.name != "senior":
                raise ValueError("Student {} is not a senior!".format(other))



if __name__ == "__main__":
    student = (Student('15487-79431', 'John', 'Smith', Level.junior))
    id = '99887'
    resistors = ['R436.943','R206.298']
    capacitors = ['C261.054', 'C194.315','C','C','C','C']
    inductors = ['L49.234']
    transistors = ['T663.350']
    y = Circuit(id,resistors,capacitors,inductors,transistors)
    x = Circuit('11111', ['R111.110','R','R','R','R'],['C111.111','C222.222'],['L111.111'],['T111.111'])
    gg = (x.getDetails())
    #print(gg)
    #print('X' in y)
    #print(('C222.022' + y).getDetails())
    #print((x + y).getDetails())
    #print(('X222.022' + y).getDetails())
    #print((y - 'C222.022').getDetails())
    #print(y.getDetails())

    #print(y)
    v = Project("38753067-e3a8-4c9e-bbde-cd13165fa21e", [student], [x])

    #print(v.getDetails())
    #print(gg in v)
    #print(v)
    #print(v.getDetails())
    #v + y
    #print(v.getDetails())
    #v-x
    #print(v.getDetails())

    #d = Capstone("38753067-e3a8-4c9e-bbde-cd13165fa21e", [student], [x])
    s = (Student('15487-79431', 'Will', 'Wang', Level.junior))
    t = (Student('15487-79431', 'John', 'Smith', Level.freshman))
    print(s)
    print(t)
    #print(d.getDetails())
    #d + t
    #print(d.getDetails())