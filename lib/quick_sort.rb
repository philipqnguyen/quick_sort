# Extending existing array with quick_sort
class Array
  def quick_sort
    return self if size <= 1
    arr = dup
    pivot_i = Random.new.rand(arr.size - 1)
    pivot = arr[pivot_i]

    smaller(arr, pivot).quick_sort +
    [pivot] +
    larger(arr, pivot, pivot_i).quick_sort
  end

  def smaller(arr, pivot)
    arr.select { |num| num if num < pivot }
  end

  def larger(arr, pivot, pivot_i)
    i = -1
    arr.select do |num|
      i += 1
      num if num >= pivot && i != pivot_i
    end
  end
end
