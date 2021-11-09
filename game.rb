# Game class > creates new game instances
# replies with yes/no depending on if input return truthy/falsey, return updated score
# a method for determining whether to ask another question or if game should end (depends on player.number_of_lives)
# a method for managing who current_player is

class Game 

  def initialize
    @players = []
    @players[0] = Player.new("Player 1")
    @players[1] = Player.new("Player 2")
    @turn = 0
    @game_over = false
  end

  def start
    while !@game_over do
      current_player = @players[@turn % 2]
      other_player = @players[(@turn + 1) % 2]

      new_question = Question.new(current_player.name)
      puts "----- NEW TURN -----"
      new_question.ask
      print "> "
      user_input = gets.chomp.to_i

      if new_question.validate(user_input)
        puts "Yes! You are correct"
      else
        puts "Seriously? No!"
        current_player.lose_life
        if current_player.lives == 0 
          @game_over = true
          puts "#{other_player.name} wins with a score of #{other_player.lives}/3"
          puts "----- GAME OVER -----"
          puts "Good bye!"
          break
        end
      end

      puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"

      @turn = @turn + 1
    end

  end

end