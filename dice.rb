class Dice
	
	def initialize(sides)
		@sides = sides
	end

	def roll_dice()
		@sides.sample()
	end

end
