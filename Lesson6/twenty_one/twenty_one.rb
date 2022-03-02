CARD_SUITS = ['Hearts', 'Spades', 'Diamonds', 'Clubs']
CARDS = ['2', '3', '4', '5', '6', '7', '8', '9', '10'] +
        ['Jack', 'Queen', 'King', 'Ace']

system 'clear'

def prompt(msg)
  puts "=> #{msg}"
end

def display_cards(player, hand)
  if player == 'dealer'
    prompt "The Dealers hand is #{hand}, which is a total of: #{total(hand)}"
  else
    prompt "Your hand is: #{hand}, which is a total of: #{total(hand)}"
  end
end

def initial_hand(player, hand)
  2.times do
    hand << [CARD_SUITS.sample, CARDS.sample]
  end
    if player == 'dealer'
      prompt "Dealer has: #{hand[0]} and an unknown card."
    else
      prompt "You have: #{hand[0]} and #{hand[1]}."
    end
end

def total(hand)
  values = hand.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == 'Ace'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == 'Ace' }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def hit(hand)
  hand << [CARD_SUITS.sample, CARDS.sample]
end

def busted?(hand)
  total(hand) > 21
end

def win?(player, dealer)
  if total(player) > total(dealer)
    prompt "You are the winner of Twenty-One!"
  elsif total(dealer) > total(player)
    prompt "The Dealer is the winner of Twenty-One!"
  else
    prompt "It's a tie!"
  end
end

prompt "Hello there, welcome to Twenty-One!"
sleep 2

prompt "The goal of Twenty-One is to try to get as close to 21 as possible, " <<
       "without going over. If you go over 21, it's a 'bust' and you lose."

sleep 3

prompt "How close can you get to 21 without going over? Let's begin."
sleep 3

loop do
  player_hand = []
  dealer_hand = []

  prompt "Dealing Cards..."

  sleep 3

  system 'clear'

  initial_hand('dealer', dealer_hand)
  initial_hand('player', player_hand)

  sleep 3

  answer = nil
  loop do
    break if answer == 'stay' || busted?(player_hand)
    prompt "Hit or Stay?"
    answer = gets.chomp.downcase

    break if answer == 'stay' || busted?(player_hand)
    hit(player_hand)
    display_cards('player', player_hand)
  end

  loop do
    if busted?(player_hand)
      display_cards('dealer', dealer_hand)
      prompt "You busted! The Dealer wins!"
      break
    else
      prompt "You chose to stay!"
    end

    prompt "Dealers turn..."
    sleep 3

    loop do
      if total(dealer_hand) >= 17
        break
      else
        hit(dealer_hand)
        prompt "Dealer chose to hit!"
        display_cards('dealer', dealer_hand)
      end
    end

    if busted?(dealer_hand)
      display_cards('player', player_hand)
      display_cards('dealer', dealer_hand)
      prompt "Dealer busted! You win!"
      break
    else
      prompt "Dealer chose to stay."
    end

    prompt "Determining Winner..."
    sleep 3

    win?(player_hand, dealer_hand)
    prompt "Your total score was: #{total(player_hand)}"
    prompt "The Dealers Total score was: #{total(dealer_hand)}"
    break
  end
  sleep 1
  prompt "Would you like to play again?(y/n)"
  play_again = gets.chomp
  break unless play_again == 'y'
end

prompt "Thank you for playing Twenty-One!"
