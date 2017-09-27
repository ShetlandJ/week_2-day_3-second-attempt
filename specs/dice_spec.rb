require('minitest/autorun')
require('minitest/rg')

require_relative("../dice")

class TestDice < MiniTest::Test
	def setup()
		@sides = [1, 2, 3, 4, 5, 6]
		@dice = Dice.new(@sides)
	end

	def test_dice_roll()
		assert(@sides.include?(@dice.roll_dice))
	end

end
