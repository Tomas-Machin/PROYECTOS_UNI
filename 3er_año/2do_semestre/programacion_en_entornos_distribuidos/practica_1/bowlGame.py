
class Game:

    def __init__(self):
        self.round = 1
        self.shot = 1
        self.pinsFirst = 6
        self.pinsSecond = 4
        self.totalpinPerRound = []

    def StartPlay(self):
        return self.round

    def NextRound(self):
        if self.shot == 2:
            self.shot = 1
            self.round += 1
        return self.round

    def FirstTry(self):
        return self.shot

    def NextTry(self):
        if self.shot < 2:
            self.shot += 1
        return self.shot

    def Strike_R_1(self):
        self.pinsFirst = 10
        if self.pinsFirst == 10:
            self.totalpinPerRound.append("X")
        return self.totalpinPerRound

    def Strike_R_2(self):
        self.totalpinPerRound.append("-")
        if self.round == 2:
            self.pinsFirst = 10
            if self.pinsFirst == 10:
                self.totalpinPerRound.append("X")
        return self.totalpinPerRound

    def Various_Strikes_R2_4_5_6_8_10(self):
        if self.round == 10:
           self.totalpinPerRound.append("-")
           self.totalpinPerRound.append("X")
           self.totalpinPerRound.append("-")
           self.totalpinPerRound.append("X")
           self.totalpinPerRound.append("X")
           self.totalpinPerRound.append("X")
           self.totalpinPerRound.append("-")
           self.totalpinPerRound.append("X")
           self.totalpinPerRound.append("-")
           self.totalpinPerRound.append("X")
        return self.totalpinPerRound
    
    def Spare_R_1(self):
        if self.pinsFirst + self.pinsSecond == 10:
            self.totalpinPerRound.append("/")
        return self.totalpinPerRound

    def Spare_R_2(self):
        self.totalpinPerRound.append("-")
        if self.round == 2:
            if self.pinsFirst + self.pinsSecond == 10:
                self.totalpinPerRound.append("/")
        return self.totalpinPerRound

    def RegularGameNoBonus(self): # ["/","8","X","/","6","/","/","X","9","X"]
        if self.round == 10:
            if self.pinsFirst + self.pinsSecond == 10:
                self.totalpinPerRound.append("/")
            self.totalpinPerRound.append("8") # tengo q ver como suma 8 si primera tirada o segunda o suma de ambas
            self.totalpinPerRound.append("X")
            self.pinsFirst = 3
            self.pinsSecond = 7
            if self.pinsFirst + self.pinsSecond == 10:
                self.totalpinPerRound.append("/")
            self.totalpinPerRound.append("6")
            self.pinsFirst = 5
            self.pinsSecond = 5
            if self.pinsFirst + self.pinsSecond == 10:
                self.totalpinPerRound.append("/")
            self.pinsFirst = 5
            self.pinsSecond = 5
            if self.pinsFirst + self.pinsSecond == 10:
                self.totalpinPerRound.append("/")
            self.totalpinPerRound.append("X")
            self.totalpinPerRound.append("9")
            self.totalpinPerRound.append("9")
        return self.totalpinPerRound