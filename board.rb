class Board
	def initialize(board)
		@board = board
	end

	def length_of_board()
		return @board.length()
	end

	def return_array_position()
		return @board[28]
	end

	def move_item_on_board()
		@board[6] = @board[1]
	end

	

end
