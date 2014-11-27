puts "Play Rock Paper Scissors"

puts "Choose one: (R/P/S)"
answer = gets.chomp

def computer_choice
  arr = ["R", "P", "S"]
  arr.sample
end

if computer_choice == "R" && answer == "P"
  puts "Computer picked Rock and you picked Paper."
  puts "Paper wraps Rock!"
  puts "You won"
elsif computer_choice == "P" && answer == "S"
  puts "Computer picked Paper and you picked Scissors"
  puts "Scissors cuts Paper"
  puts "You won"
elsif computer_choice == "S" && answer == "R"
  puts "Computer picked Scissors and you picked Rock"
  puts "Rock beats Scissors"
  puts "You won"
elsif computer_choice == "R" && answer == "S"
  puts "Computer picked Rock and you picked Scissors"
  puts "Rock beat Scissors"
  puts "You lose"
elsif computer_choice == "P" && answer == "R"
  puts "Computer picked Paper and you picked Rock"
  puts "Paper wraps Rock"
  puts "you lose"
elsif computer_choice == "S" && answer == "P"
  puts "Computer picked Scissors and you picked Paper"
  puts "Scissors cuts Paper"
  puts "You lose"
end
    
    
    


