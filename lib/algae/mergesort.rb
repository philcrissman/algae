module Algae
  class Mergesort
    attr_accessor :list, :size

    def initialize list
      @list = list.dup
      @size = list.size - 1
    end

    def sort(first=0, last=size, scratch=[])
      return if first >= last
      midpoint = (first + last) / 2
      sort(first, midpoint, scratch)
      sort(midpoint + 1, last, scratch)
      left_index = first
      right_index = midpoint + 1
      scratch_index = left_index
      while left_index <= midpoint && right_index <= last
        if list[left_index] <= list[right_index]
          scratch[scratch_index] = list[left_index]
          left_index += 1
        else
          scratch[scratch_index] = list[right_index]
          right_index += 1
        end
        scratch_index += 1
      end
      (left_index..midpoint).each do |i|
        scratch[scratch_index] = list[i]
        scratch_index += 1
      end

      (right_index..last).each do |i|
        scratch[scratch_index] = list[i]
        scratch_index += 1
      end

      (first..last).each do |i|
        list[i] = scratch[i]
      end

      list
    end
  end
end
