class Dice
	def initialize(sides)
		@sides = sides
	end

	def side_count()
		return @sides
	end

	def roll_dice()
		@sides.sample()
	end

	def show_dice_face()
		return @sides.sample()
	end
end
