CHOICES = {"p" => "Paper", "r" => "Rock", "s" => "Scissors"}
puts "Welcome to the game!"

def display_winning_choice(winning_choice)
  case winning_choice
  when 'p'
    puts 'Paper wraps Rock'
  when 'r'
    puts "Rock smashes Scissors"
  when 's'
    puts "Scissors cuts Paper"
  end
end
    

loop do 

  #player choice
  begin
    puts "Pick one: {p, r, s}:"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

  #computer choice
  computer_choice = CHOICES.keys.sample

  if player_choice == computer_choice
    puts "Its a tie"
  elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' && computer_choice == 'p')
    display_winning_choice(player_choice)
    puts "You won!"  
  else
    display_winning_choice(computer_choice)
    puts "Computer wins!"
  end

  puts "Would you like to play again? (y/n)"
  answer = gets.chomp.downcase
  if answer != "y"
    break
  end
  
end