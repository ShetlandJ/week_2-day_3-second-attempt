class Player
	def initialize(name, piece_colour, dice)
		@name = name
		@piece_colour = piece_colour
		@dice = dice
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

end
