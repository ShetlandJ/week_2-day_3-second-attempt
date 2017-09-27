require('minitest/autorun')
require('minitest/rg')

require_relative("../pieces")

class TestPieces < MiniTest::Test
	def setup()
		@piece1 = Piece.new("yellow")
		@piece2 = Piece.new("blue")
		@piece3 = Piece.new("red")
		@piece4 = Piece.new("green")
	end

	def test_piece_has_name()
		assert_equal("yellow", @piece1.show_piece_name())
	end

end
