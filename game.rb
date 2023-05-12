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
    puts(@game_over ? 'You win!' : 'You lose!')
  end

  private

  # The play_round method generates a code and determines whether the game is
  # over or not.
  def play_round
    @codebreaker.generate_code
    @game_over = @codemaker.code == @codebreaker.code
    return if @game_over
  end
end
