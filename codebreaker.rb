# frozen_string_literal: false

class CodeBreaker
  attr_reader :code

  def guess_code
    @code = []
    puts 'Enter 4 digits'
    4.times do
      @code << gets.chomp.to_i
    end
  end
end
