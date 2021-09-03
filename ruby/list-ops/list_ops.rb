=begin
Write your code for the 'List Ops' exercise in this file. Make the tests in
`list_ops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/list-ops` directory.
=end

require 'pry'
class ListOps
  def self.arrays(arr)
    arr.count
  end

  def self.reverser(arr)
    arr.reverse
  end

  def self.concatter(arr1, arr2)
    arr1 + arr2
  end

  def self.mapper(arr, &block)
    return arr unless block_given?

    arr.map(&block)
  end

  def self.filterer(arr, &block)
    return arr unless block_given?

    arr.select(&block)
  end

  def self.sum_reducer(arr)
    arr.inject(0, :+)
  end

  def self.factorial_reducer(arr)
    arr.inject(1, :*)
  end
end
