# frozen_string_literal: false

require './codemaker'
require './codebreaker'
require './game'

codemaker = CodeMaker.new
codemaker.generate_code
puts codemaker.code.join('')

codebreaker = CodeBreaker.new
codebreaker.generate_code
puts codebreaker.code.join('')

game = Game.new
puts(game.play_round(codemaker, codebreaker))
