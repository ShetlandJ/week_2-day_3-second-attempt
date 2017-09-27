class Player
	def initialize(name, starting_position)
		@name = name
		@starting_position = starting_position
	end

	def show_player_name()
		return @name
	end

	def starting_position()
		return @starting_position
	end

	def roll_dice(roll)
		return roll
	end

	def increase_player_position(dice)
  	@starting_position + roll_dice(dice)
	end


end
