# frozen_string_literal: false
require 'pry-byebug'

class Game
  def initialize
    @game_over = false
    @count_rounds = 1
  end

  def play_game(codemaker, codebreaker)
    codemaker.generate_code
    puts codemaker.code.join('')

    until @game_over || @count_rounds > 12
      puts "Round: #{@count_rounds}"
      play_round(codemaker, codebreaker)
      @count_rounds += 1
    end
  end

  private

  def play_round(codemaker, codebreaker)
    codebreaker.generate_code
    @game_over = codemaker.code == codebreaker.code
  end
end
