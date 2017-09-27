require('minitest/autorun')
require('minitest/rg')

require_relative("../players")
require_relative("../dice")
require_relative("../pieces")

class TestPlayers < MiniTest::Test
	def setup()
		@sides = [1, 2, 3, 4, 5, 6]
		@dice = Dice.new(@sides)

		@piece1 = Piece.new("yellow")
		@piece2 = Piece.new("blue")
		@piece3 = Piece.new("red")
		@piece4 = Piece.new("green")

		@player1 = Player.new("Joe", @piece1.show_piece_name, @dice)
		@player2 = Player.new("Ed", @piece2.show_piece_name, @dice)
		@player3 = Player.new("Bill", @piece3.show_piece_name, @dice)
		@player4 = Player.new("Gary", @piece4.show_piece_name, @dice)
	end

	def test_player_has_name()
		assert_equal("Joe", @player1.show_player_name())
	end

	def test_return_piece_colour_by_player()
		assert_equal("yellow", @player1.return_piece_colour_by_player())
	end

	def test_player_can_roll_dice()
		actual = @player1.roll_dice()
		assert(@sides.include?(@dice.roll_dice), actual)
	end

end
