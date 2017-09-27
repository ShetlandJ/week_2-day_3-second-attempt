class Player
	def initialize(name, piece_colour, dice)
		@name = name
		@piece_colour = piece_colour
		@dice = dice
		@position = 1
	end

	def show_player_name()
		return @name
	end

	def return_piece_colour_by_player()
		return @piece_colour
	end

	def roll_dice()
		return @dice.roll_dice
	end

	def check_player_position_by_text()
		return "#{@name}, #{@piece_colour} piece, is at position #{@position} on board"
	end

	def check_player_position_by_number()
		return @position
	end

	def increase_player_position()
		roll_dice = @dice.roll_dice()
    @position += roll_dice
    return roll_dice
	end

end
