class FizzBuzz

  def print(number)
    if number.respond_to?("each")
      result = []
      number.each { |num| result << test_number(num) }
    else
      result = test_number(number)
    end
    result
  end

  private

    def test_number(number)
      raise ArgumentError unless number > 0
      raise ArgumentError unless number.is_a? Integer

      if number % 15 == 0
        "FizzBuzz"
      elsif number % 3 == 0
        "Fizz"
      elsif number % 5 == 0
        "Buzz"
      else
        number.to_s
      end
    end

end
