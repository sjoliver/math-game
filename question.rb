class Question 
  def initialize(player_name)
    @player_name = player_name
    @value1 = rand(1..20)
    @value2 = rand(1..20)
    @answer = @value1 + @value2
  end

  def ask
    puts "#{@player_name}: What does #{@value1} plus #{@value2} equal?"
  end

  def validate(user_input)
    user_input == @answer
  end
end
