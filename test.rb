# frozen_string_literal: false

require './codemaker'
require './codebreaker'
require './game'

codemaker = CodeMaker.new
codebreaker = CodeBreaker.new

game = Game.new(codemaker, codebreaker)
game.play_game
