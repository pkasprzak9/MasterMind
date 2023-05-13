# frozen_string_literal: false

require './computer'
require './player'
require './game'

computer = Computer.new
player = Player.new

game = Game.new(computer, player)
game.play_game
