require('minitest/autorun')
require('minitest/rg')

require_relative("../dice")
require_relative("../pieces")
require_relative("../players")
require_relative("../board")
require_relative("../snakes")
require_relative("../ladders")

class TestBoard < MiniTest::Test
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

		@snake1 = Snake.new(17, 4)
		@snake2 = Snake.new(19, 7)
		@snake3 = Snake.new(21, 9)
		@snake4 = Snake.new(27, 1)

		@ladder1 = Ladder.new(3, 22)
		@ladder2 = Ladder.new(5, 8)
		@ladder3 = Ladder.new(11, 26)
		@ladder4 = Ladder.new(20, 29)

		@new_board = [
			[@player1, @player2, @player3, @player4],
			nil,
			@ladder1,
			nil,
			@ladder2,
			nil,
			nil,
			nil,
			nil,
			nil,
			@ladder3,
			# 12
			nil,
			nil,
			nil,
			nil,
			nil,
			@snake1,
			nil,
			@snake2,
			@ladder4,
			@snake3,
			nil,
			nil,
			nil,
			# 24
			nil,
			nil,
			@snake4,
			nil,
			nil,
			nil
			@game.finish
		]
		@board = Board.new(@new_board)
end

	def test_length_of_board()
		assert_equal(30, @board.length_of_board())
	end

	def test_return_array_position()
		assert_nil(@board.return_array_position())
	end

	def test_return_array_position()
		assert_nil(@board.return_array_position())
	end

end
