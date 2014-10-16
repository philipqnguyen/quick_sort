require 'spec_helper'
require 'quick_sort.rb'

describe 'Quick sort' do
  it 'Should sort an array of random numbers' do
    arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].shuffle

    arr.quick_sort.must_equal arr.sort
  end

  it 'Should sort an array with duplicate numbers' do
    arr = [0, 1, 2, 2, 3, 3, 4, 5, 5, 6, 7, 8, 8, 9, 9].shuffle

    arr.quick_sort.must_equal arr.sort
  end

  it 'Should sort an array with negative numbers' do
    arr = [-3, -2, -1, 0, 1, 2, 3].shuffle

    arr.quick_sort.must_equal arr.sort
  end
end
