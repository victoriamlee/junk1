require './players'
require './turns'

class Game < Players
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  player1 = Players.new('Player One')
  player2 = Players.new('Player Two')


  turn = Turns.new(player1, player2)

  turn.run

  turn.status(player1, player2)


end