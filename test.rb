# frozen_string_literal: false

require './codemaker'
require './codebreaker'
require './game'

codemaker = CodeMaker.new
codebreaker = CodeBreaker.new

game = Game.new
puts(game.play_game(codemaker, codebreaker))
