VALID_CHOICES = %w(rock paper scissors)
# format the output

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(player, computer)
  # refactoring - the rps win condition by cut and pasting into this
  # method
  (player == 'rock' && computer == 'scissors') ||
    (player == 'paper' && computer == 'rock') ||
    (player == 'scissors' && computer == 'paper')
end

def display_result(player, computer)
  # write calculations
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie")
  end
end

loop do
  choice = '' # make sure initialized outside loop
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
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
  display_result(choice, computer_choice)
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")

# refactoring potential: extract the logic of who won and displaying it to
# a separate function
