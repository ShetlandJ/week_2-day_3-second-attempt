require('minitest/autorun')
require('minitest/rg')

require_relative("../game")
require_relative("../dice")
require_relative("../players")
require_relative("../board")

class TestGame < MiniTest::Test
	def setup()
		@sides = [1, 2, 3, 4, 5, 6]
		@dice = Dice.new(@sides)

		@player1 = Player.new("Joe", 1)
		@player2 = Player.new("Ed", 1)

		@board = Board.new()
	end




















end
