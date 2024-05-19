
import unittest
from bowlGame import Game


class Test(unittest.TestCase):

    def test_StartPlay(self):
        start = Game()
        self.assertEqual(start.StartPlay(), 1)

    def test_Round_2(self):
        round = Game()
        round.NextTry()
        self.assertEqual(round.NextRound(), 2)

    def test_Round_10(self):
        round = Game()
        for i in range(9):
            round.NextTry()
            round.NextRound()
        self.assertEqual(round.NextRound(), 10)

    def test_FirstTry(self):
        shot = Game()
        self.assertEqual(shot.FirstTry(), 1)

    def test_NextTry(self):
        shot = Game()
        self.assertEqual(shot.NextTry(), 2)

    def test_Try1_3Round(self):
        shot = Game()
        for i in range(2):
            shot.NextTry()
            shot.NextRound()
        self.assertEqual(shot.FirstTry(), 1)

    def test_Try2_7Round(self):
        shot = Game()
        for i in range(6):
            shot.NextTry()
            shot.NextRound()
        self.assertEqual(shot.NextTry(), 2)

    def test_Strike_R_1(self):
        strike = Game()
        self.assertEqual(strike.Strike_R_1(), ["X"])

    def test_Strike_R_2(self):
        strike = Game()
        for i in range(1):
            strike.NextTry()
            strike.NextRound()
        self.assertEqual(strike.Strike_R_2(), ["-","X"])

    def test_Various_Strikes(self):
        strike = Game()
        for i in range(9):
            strike.NextTry()
            strike.NextRound()
        self.assertEqual(strike.Various_Strikes_R2_4_5_6_8_10(), ["-","X","-","X","X","X","-","X","-","X"])

    def test_Spare_R_1(self):
        spare = Game()
        self.assertEqual(spare.Spare_R_1(), ["/"])

    def test_Spare_R_2(self):
        spare = Game()
        for i in range(1):
            spare.NextTry()
            spare.NextRound()
        self.assertEqual(spare.Spare_R_2(), ["-", "/"])

    def test_RegularGameNoBonus(self):
        game = Game()
        for i in range(9):
            game.NextTry()
            game.NextRound()
        self.assertEqual(game.RegularGameNoBonus(), ["/","8","X","/","6","/","/","X","9","9"])


if __name__ == '__main__':
    unittest.main()