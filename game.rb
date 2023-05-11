# frozen_string_literal: false

class Game
  def play_round(codemaker, codebreaker)
    codemaker.code == codebreaker.code
  end
end
