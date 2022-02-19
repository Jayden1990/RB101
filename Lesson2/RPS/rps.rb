require 'yaml'
MESSAGES = YAML.load_file('rps_messages.yml')

VALID_CHOICES = %w(rock paper scissors lizard spock)

WINNING_COMBOS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['spock', 'rock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['paper', 'spock'],
  'spock' => ['scissor', 'rock']
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WINNING_COMBOS[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won this round!")
  elsif win?(computer, player)
    prompt("Computer won this round!")
  else
    prompt("This round is a tie!")
  end
end

def winner!(player, computer)
  if player == 3
    prompt(MESSAGES['player_wins'])
  elsif computer == 3
    prompt(MESSAGES['computer_wins'])
  end
end

prompt(MESSAGES['welcome'])

prompt(MESSAGES['seperator'])

prompt(MESSAGES['rules'])

prompt(MESSAGES['seperator'])

loop do
  choice = ''
  player_score = 0
  computer_score = 0
  loop do
    loop do
      prompt(MESSAGES['choice'])
      prompt(MESSAGES['abbreviation'])
      choice = Kernel.gets().chomp()

      if choice == 'r'
        choice = 'rock'
      elsif choice == 's'
        choice = 'scissors'
      elsif choice == 'p'
        choice = 'paper'
      elsif choice == 'l'
        choice = 'lizard'
      elsif choice == 'sp'
        choice = 'spock'
      end

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt(MESSAGES['choice_not_valid'])
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
    prompt(MESSAGES['separator'])
    display_results(choice, computer_choice)
    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    end

    prompt(MESSAGES['seperator'])
    Kernel.puts("Score: Player #{player_score} | Computer: #{computer_score}")

    if player_score == 3 || computer_score == 3
      winner!(player_score, computer_score)
      break
    else
      prompt(MESSAGES['next_round'])
    end
    prompt(MESSAGES['seperator'])
  end
  prompt(MESSAGES['play_again?'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['goodbye'])
