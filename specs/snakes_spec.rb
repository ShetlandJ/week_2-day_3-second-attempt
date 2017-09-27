require('minitest/autorun')
require('minitest/rg')

require_relative("../snakes")


class TestSnakes < MiniTest::Test
	def setup()
    @ladder = Snake.new(47, 26)
  end

  def test_return_position__start()
    assert_equal(47, @ladder.return_start_position)
  end

  def test_return_position__finish()
    assert_equal(26, @ladder.return_finish_position)
  end
end
