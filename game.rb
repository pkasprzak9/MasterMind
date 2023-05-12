# frozen_string_literal: false

# The Game class initializes with four instance variables: @code_maker,
# @code_breaker,  @game_over and @count_rounds.
class Game
  def initialize(codemaker, codebreaker)
    @codemaker = codemaker
    @codebreaker = codebreaker
    @game_over = false
    @count_rounds = 1
  end

  # The play_game method generates a code and plays rounds until the game is
  # over or the maximum number of rounds is reached.
  def play_game
    @codemaker.generate_code
    puts @codemaker.code.join('')

    until @game_over || @count_rounds > 12
      puts "Round: #{@count_rounds}"
      play_round
      @count_rounds += 1
    end
  end

  private

  # The play_round method generates a code and determines whether the game is
  # over or not.
  def play_round
    @codebreaker.generate_code
    @game_over = @codemaker.code == @codebreaker.code
    return if @game_over

    keep_track
  end

  # The keep_track method checks for correct guesses and prints the appropriate
  # message using the print_correct_guesses method.
  def keep_track
    correct_number = 0
    @codebreaker.code.each do |num|
      correct_number += 1 if @codemaker.code.include?(num)
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
