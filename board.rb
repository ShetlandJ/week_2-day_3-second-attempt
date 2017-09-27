class Board
	def initialize(snakes, ladders)
		@snakes = snakes
		@ladders = ladders
	end

	def snake(starting_position, finish_position)
		starting_position = finish_position
	end

	def ladder(starting_position, finish_position)
		starting_position = finish_position
	end

	def snake_positions_start()
		snake_array = []
		for snake in @snakes
			snake_array << snake.snake_start
		end
		return snake_array
	end

	def snake_positions_end()
		snake_array = []
		for snake in @snakes
			snake_array << snake.snake_finish
		end
		return snake_array
	end

	def ladder_positions_start()
		ladder_array = []
		for ladder in @ladders
			ladder_array << ladder.ladder_start
		end
		return ladder_array
	end

	def ladder_positions_end()
		ladder_array = []
		for ladder in @ladders
			ladder_array << ladder.ladder_finish
		end
		return ladder_array
	end


end
