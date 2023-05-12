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
    # correct_number_and_place = 0

    codebreaker.generate_code
    @game_over = codemaker.code == codebreaker.code
    return if @game_over

    keep_track(codemaker, codebreaker)
  end

  def keep_track(codemaker, codebreaker)
    correct_number = 0
    codebreaker.code.each do |num|
      correct_number += 1 if codemaker.code.include?(num)
    end
    print_correct_guesses(correct_number)
  end

  def print_correct_guesses(num)
    case num
    when 0
      puts "There isn't any correct number in your guess."
    when 1
      puts "There is #{num} correct number in your guess!"
    else
      puts "There are #{num} correct numbers in your guess!"
    end
  end
end
