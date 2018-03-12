class TimeSpan:
    def __init__(self, weeks, days, hours):
        if (weeks < 0) or (days < 0) or (hours < 0):
            raise ValueError("The arguments cannot be negative.")
        #print(hours)
        day = hours // 24
        #print(day)
        hour = hours - (day * 24)
        #print(hour)
        day1 = day + days
        week = day1 // 7
        day2 = day1 - week * 7

        #print(week,day2,hour)
        self.weeks = weeks + week
        self.days = day2
        self.hours = hour

    def __str__(self):
        strings = "{0:0>2d}W {1}D {2:0>2d}H".format(self.weeks, self.days, self.hours)
        return strings

    def getTotalHours(self):
        total = self.weeks * (7*24) + self.days*24 + self.hours
        return total

    def __add__(self, other):
        if not isinstance(other,TimeSpan):
            TypeError("An TimeSpan instance is expected!")
        h = self.hours + other.hours
        d = self.days + other.days
        w = self.weeks + other.weeks
        return TimeSpan(w, d, h)

    def __mul__(self, other):
        if not isinstance(other, int):
            TypeError("An integer is expected!")
        if other <= 0:
            ValueError("the integer must be greater than 0!")
        h = self.hours * other
        d = self.days * other
        w = self.weeks * other
        return TimeSpan(w, d, h)

    def __rmul__(self, other):
        return self.__mul__(other)

if __name__ == "__main__":
    ts = TimeSpan(2, 15, 49)
    aq = TimeSpan(1, 1, 49)
    print(ts)
    a =ts * 2
    print(a)