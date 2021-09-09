=begin
Write your code for the 'List Ops' exercise in this file. Make the tests in
`list_ops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/list-ops` directory.
=end

require 'pry'
class ListOps
  def self.arrays(arr)
    counter = 0
    arr.each do
      counter += 1
    end
    counter
  end

  def self.reverser(arr)
    new_arr = []
    new_arr << arr.pop until arr.empty?
    new_arr
  end

  def self.concatter(arr1, arr2)
    new_arr = []

    arr1.each do |n|
      new_arr << n
    end

    arr2.each do |n|
      new_arr << n
    end

    new_arr
  end

  def self.mapper(arr)
    return arr unless block_given?

    new_arr = []
    arr.each do |v|
      new_arr << yield(v)
    end

    new_arr
  end

  def self.filterer(arr)
    return arr unless block_given?

    new_arr = []
    arr.each do |v|
      new_arr << v if yield(v)
    end

    new_arr
  end

  def self.sum_reducer(arr)
    value = 0
    return value unless arr

    arr.each do |v|
      value += v
    end
    value
  end

  def self.factorial_reducer(arr)
    value = 1
    return value unless arr

    arr.each do |v|
      value *= v
    end
    value
  end
end
