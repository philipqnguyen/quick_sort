# Extending existing array with quick_sort
class Array
  def quick_sort
    return self if self.size <= 1
    arr = self.dup
    pivot_i = Random.new.rand(arr.size - 1)
    pivot = arr[pivot_i]

    i = -1
    smaller = arr.select { |num| num if num < pivot }
    larger = arr.select { |num| i += 1; num if num >= pivot && i != pivot_i }

    smaller.quick_sort + [pivot] + larger.quick_sort
  end
end
