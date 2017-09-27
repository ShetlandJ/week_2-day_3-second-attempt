require('minitest/autorun')
require('minitest/rg')

require_relative("../players")
require_relative("../board")
require_relative("../snakes")
require_relative("../ladders")

class TestBoard < MiniTest::Test
	def setup()

		@player1 = Player.new("Joe", 1)
		@player2 = Player.new("Ed", 1)
		@player_test_1 = Player.new("James", 17)
		@player_test_2 = Player.new("Brian", 11)

		@snake1 = Snake.new(17, 4)
		@snake2 = Snake.new(19, 7)
		@snake3 = Snake.new(21, 9)
		@snake4 = Snake.new(27, 1)

		@ladder1 = Ladder.new(3, 22)
		@ladder2 = Ladder.new(5, 8)
		@ladder3 = Ladder.new(11, 26)
		@ladder4 = Ladder.new(20, 29)

		@snakes = [@snake1, @snake2, @snake3, @snake4]
		@ladders = [@ladder1, @ladder2, @ladder3, @ladder4]

		@board = Board.new(@snakes, @ladders)
	end

	def test_snake()
		assert_equal(4, @board.snake(@player_test_1.starting_position, @snake1.snake_finish()) )
	end

	def test_ladder()
		assert_equal(26, @board.ladder(@player_test_2.starting_position, @ladder3.ladder_finish()) )
	end

	def test_snake_positions__start()
		expected = [17, 19, 21, 27]
		actual = @board.snake_positions_start()
		assert_equal(expected, actual)
	end

	def test_snake_positions__end()
		expected = [4, 7, 9, 1]
		actual = @board.snake_positions_end()
		assert_equal(expected, actual)
	end

	def test_ladder_positions__start()
		expected = [3, 5, 11, 20]
		actual = @board.ladder_positions_start()
		assert_equal(expected, actual)
	end


	def test_ladder_positions__end()
		expected = [22, 8, 26, 29]
		actual = @board.ladder_positions_end()
		assert_equal(expected, actual)
	end



end
