=begin
Write your code for the 'Change' exercise in this file. Make the tests in
`change_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/change` directory.
=end

class Change
  def self.generate(arr, target)
    c = arr.length - 1
    a = []
    while target != 0
      if target - arr[c] < 0
        c -= 1
      elsif target % arr[c] == 0
        a << arr[c]
        break
      elsif target % arr[c] > 0
        a << arr[c]
        target -= arr[c]
        c -= 1
      end
    end

    a.sort
  end
end
