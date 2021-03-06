require_relative './test_helper.rb'

class Algae::QuicksortTest < MiniTest::Test
  def setup
    @list = (1..1000).map{ rand(99) }
    @sorted = @list.sort
    @qs = Algae::Quicksort.new(@list)
  end

  def test_sort
    assert_equal @sorted, @qs.sort
  end
end
