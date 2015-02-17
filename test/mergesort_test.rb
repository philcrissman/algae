require 'minitest/autorun'

require 'algae'

class Algae::MergesortTest < MiniTest::Test
  def setup
    @l = (1..1000).map{ rand(99) }
    @sorted = @l.sort
    @ms = Algae::Mergesort.new(@l)
  end

  def test_sort
    assert_equal @sorted, @ms.sort
  end
end
