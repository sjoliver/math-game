# nouns: game, player, turn, question, player_input, response, current_score

# Game class > creates new game instances
# each game has turns, each turn has a question, asks for player_input, replies with yes/no depending on input, returns updated score
# a method for determining whether to ask another question or if game should end (depends on player.number_of_lives)
# a method for managing who current_player is

# Player subclass of game > creates player object instances
# player object will have a name (ex player1), number of lives count
# a method to decrement the number of lives if the response is incorrect