VALID_CHOICES = %w(rock paper scissors lizard spock)
# format the output

# player move => opponent moves where player wins
WIN_CONDITIONS = {'rock' => %w(lizard scissors), 'paper' => %w(rock spock),
 'scissors' => %w(paper lizard), 'spock' => %w(scissors rock), 'lizard' => %w(spock paper)
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def autocomplete(string)
  if string == 'r'
    string.replace 'rock'
  elsif string == 'p'
    string.replace 'paper'
  elsif string == 'sc'
    string.replace 'scissors'
  elsif string == 'l'
    string.replace 'lizard'
  elsif string == 'sp'
    string.replace 'spock'
  end
end

def win?(player1_move, player2_move)
  # refactoring - the rps win condition by cut and pasting into this
  # method
  # (player1 == 'rock' && player2 == 'lizard') ||
  #   (player1 == 'rock' && player2 == 'scissors') ||
  #   (player1 == 'paper' && player2 == 'rock') ||
  #   (player1 == 'paper' && player2 == 'spock') ||
  #   (player1 == 'scissors' && player2 == 'paper') ||
  #   (player1 == 'scissors' && player2 == 'lizard') ||
  #   (player1 == 'spock' && player2 == 'scissors') ||
  #   (player1 == 'spock' && player2 == 'rock') ||
  #   (player1 == 'lizard' && player2 == 'spock') ||
  #   (player1 == 'lizard' && player2 == 'paper')
  
  # reducing lines of logic with hashes and arrays
  WIN_CONDITIONS.fetch(player1_move).include?(player2_move)
end

scores = [0, 0]

def update_score(winning_player, scores)
  if winning_player == 'player'
    scores[0] += 1
  elsif winning_player == 'computer'
    scores[1] += 1
  end
end

def display_result(player, computer, scores)
  # write calculations
  if win?(player, computer)
    update_score('player', scores)
    prompt("You won!")
    prompt("Player score: #{scores[0]}; Computer score: #{scores[1]}")
  elsif win?(computer, player)
    update_score('computer', scores)
    prompt("Computer won!")
    prompt("Player score: #{scores[0]}; Computer score: #{scores[1]}")
  else
    prompt("It's a tie")
    prompt("Player score: #{scores[0]}; Computer score: #{scores[1]}")
  end
end

def check_grand_win(scores)
  if scores[0] == 3
    prompt("Player wins the game! Match is over.")
    true
  elsif scores[1] == 3
    prompt("Computer wins the game! Match is over.")
    true
  else
    false
  end
end

loop do
  choice = '' # make sure initialized outside loop
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    autocomplete(choice)
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  # use sample to get random element of array
  computer_choice = VALID_CHOICES.sample
  # first validate input ^^
  # we sense we will repeat the array of rps, so lets give that a variable
  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")
  display_result(choice, computer_choice, scores)
  if check_grand_win(scores)
    break
  end
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")

# refactoring potential: extract the logic of who won and displaying it to
# a separate function
