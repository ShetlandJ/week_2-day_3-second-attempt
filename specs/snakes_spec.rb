require('minitest/autorun')
require('minitest/rg')

require_relative("../snakes")


class TestSnakes < MiniTest::Test
	def setup()
    @ladder = Snake.new(28, 17)
  end

  def test_return_position__start()
    assert_equal(28, @ladder.return_start_position)
  end

  def test_return_position__finish()
    assert_equal(17, @ladder.return_finish_position)
  end
end
