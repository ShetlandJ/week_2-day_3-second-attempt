require('minitest/autorun')
require('minitest/rg')

require_relative("../players")
require_relative("../dice")

class TestPlayers < MiniTest::Test
	def setup()
		@sides = [1, 2, 3, 4, 5, 6]
		@dice = Dice.new(@sides)

		@player1 = Player.new("Joe", 1)
		@player2 = Player.new("Ed", 1)

	end

	def test_player_has_name()
		assert_equal("Joe", @player1.show_player_name())
	end

	def test_player_starting_position()
		assert_equal(1, @player1.starting_position)
	end

	def test_player_dice_roll()
		actual = @player1.roll_dice(@dice.roll_dice)
		assert_includes(1..6, actual)
	end

	def test_increase_player_position()
		expected = @player1.starting_position + @dice.roll_dice
		actual = @player1.increase_player_position(@dice.roll_dice)
		assert_equal(expected, actual)
	end

end
