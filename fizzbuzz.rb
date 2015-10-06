class FizzBuzz
  def self.calculate value
    return 'FizzBuzz' if value % 15 == 0
    return 'Fizz' if value % 3 == 0
    return 'Buzz' if value % 5 == 0
    value
  end
end
