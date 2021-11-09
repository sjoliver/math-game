# nouns: game, player, turn, question, player_input, response, current_score

# Game class > creates new game instances
# replies with yes/no depending on if input returns truthy/falsey, returns updated score
# a method for determining whether to ask another question or if game should end (depends on player.number_of_lives)
# a method for managing who current_player is

# question class 
# asks question, holds an answer
# asks for user input
# validates input 

# Player class of game > creates player object instances
# player object will have a name (ex player1), number of lives count
# a method to decrement the number of lives if the response is incorrect