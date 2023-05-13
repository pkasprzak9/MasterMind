# frozen_string_literal: false

class Player
  attr_reader :code

  # The generate_code method prompts the user to enter four digits, reads and
  # converts the input to integers, and stores them in an instance variable
  # called @code, which represents the guess of th user.
  def generate_code
    @code = []
    puts 'Enter 4 digits'
    4.times do
      @code << gets.chomp.to_i
    end
  end
end
