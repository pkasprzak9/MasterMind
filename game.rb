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
    correct_number = 0
    # correct_number_and_place = 0

    codebreaker.generate_code
    @game_over = codemaker.code == codebreaker.code
    return if @game_over

    codebreaker.code.each do |num|
      correct_number += 1 if codemaker.code.include?(num)
    end
    puts "Correct numbers: #{correct_number}"
  end
end
