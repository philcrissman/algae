module Algae
  class Quicksort

    attr_accessor :list, :last

    def initialize list
      @list = list.dup
      @last = list.size-1
    end

    def sort(start=0,finish=last)
      return if start >= finish # return if only one element
      pivot = @list[start]
      lo, hi = start, finish

      while true
        while @list[hi] >= pivot
          hi -= 1
          break if hi <= lo
        end
        if hi <= lo
          @list[lo] = pivot
          break
        end
        @list[lo] = @list[hi]

        lo += 1
        while @list[lo] < pivot
          lo += 1
          break if lo >= hi
        end
        if lo >= hi
          lo = hi
          @list[hi] = pivot
          break
        end
        @list[hi] = @list[lo]
      end

      sort(start,lo - 1)
      sort(lo + 1, finish)

      @list
    end
  end
end
