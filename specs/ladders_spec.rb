require('minitest/autorun')
require('minitest/rg')

require_relative("../ladders")


class TestLadders < MiniTest::Test
	def setup()
    @ladder = Ladder.new(5, 25)
  end

  def test_return_position__start()
    assert_equal(5, @ladder.ladder_start)
  end

  def test_return_position__finish()
    assert_equal(25, @ladder.ladder_end)
  end
end
