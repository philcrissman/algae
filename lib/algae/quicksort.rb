module Algae
  class Quicksort

    attr_accessor :array, :last

    def initialize array
      @array = array
      @last = array.size-1
    end

    def sort(start=0,finish=last)
      return if start >= finish # return if only one element
      pivot = @array[start]
      lo, hi = start, finish

      while true
        while @array[hi] >= pivot
          hi -= 1
          break if hi <= lo
        end
        if hi <= lo
          @array[lo] = pivot
          break
        end
        @array[lo] = @array[hi]

        lo += 1
        while @array[lo] < pivot
          lo += 1
          break if lo >= hi
        end
        if lo >= hi
          lo = hi
          @array[hi] = pivot
          break
        end
        @array[hi] = @array[lo]
      end

      sort(start,lo - 1)
      sort(lo + 1, finish)

      @array
    end
  end
end
