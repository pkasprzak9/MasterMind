# frozen_string_literal: false

class CodeMaker
  attr_reader :code

  def generate_code
    @code = []
    4.times do
      temp = rand(9)
      @code.push(temp)
    end
  end
end
