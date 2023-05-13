# frozen_string_literal: false

class Computer
  attr_reader :code

  # This method generates a 4-digit code consisting of random numbers between 0
  # and 9.
  def generate_code
    @code = []
    4.times do
      temp = rand(9)
      @code.push(temp)
    end
  end
end
