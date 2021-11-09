# Player class of game > creates player object instances
# player object will have a name (ex player1), number of lives count
# a method to decrement the number of lives if the response is incorrect

class Player 
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives = @lives - 1
  end
end