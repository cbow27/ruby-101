VALID_CHOICES = {
  "1" => "Rock",
  "2" => "Paper",
  "3" => "Scissors",
  "4" => "Lizard",
  "5" => "Spock"
}

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == "Rock" && second == "Scissors") ||
  (first == "Rock" && second == "Lizard") ||
  (first == "Paper" && second == "Rock") ||
  (first == "Paper" && second == "Spock") ||
  (first == "Scissors" && second == "Paper") ||
  (first == "Scissors" && second == "Lizard") ||
  (first == "Lizard" && second == "Spock") ||
  (first == "Lizard" && second == "Paper") ||
  (first == "Spock" && second == "Scissors") ||
  (first == "Spock" && second == "Rock")
end
prompt "Welcome to Rock, Paper, Scissors, Lizard, Spock (Best of 3)!"

loop do 
  prompt "Please enter your name:"
   NAME = gets.chomp
  if NAME.empty?
    prompt "Sorry I didnt get your name"
  else
    break
  end
end
puts "Welcome #{NAME}"

loop do
choice = nil
man = 0
machine = 0

 loop do
  
  loop do
  choice_prompt = <<-MSG
    Select a #number. down below:
    #1. Rock
    #2. Paper
    #3. Scissors
    #4. Spock
    #5. Lizard
    #6. 'Rules of the game'
  MSG
  puts choice_prompt
  
  choice = gets.chomp
  if choice == "6"
    puts " "
    prompt "Scissors cuts Paper covers Rock crushes Lizard,"
    prompt "poisons Spock smashes Scissors,"
    prompt "decapitates Lizard eats Paper disproves Spock"
    prompt "vaporizes Rock, and as it always has, Rock crushes Scissors."
    puts " "
  elsif VALID_CHOICES.include?(choice)
    break
  else
    prompt "Invalid input, must type: 1, 2, 3, 4, 5, or 6"
  end
end

computer_choice = VALID_CHOICES.sample
prompt "Computer chooses #{computer_choice}, #{NAME} chose #{choice}"
if win?(choice, computer_choice)
  man += 1
  break if man == 3
  puts "#{NAME} wins the round"
  puts "Score is now #{NAME}: #{man} Computer: #{machine}"
elsif win?(computer_choice, choice)
  machine += 1
  break if machine == 3
  puts "Computer wins the round"
  puts "Score is now #{NAME}: #{man} Computer: #{machine}"
else
  prompt "Its a tie"
  end
end
prompt man > machine ? "FINAL SCORE: #{NAME}: #{man} Computer: #{machine}, #{NAME} wins!" : "FINAL SCORE: #{NAME}: #{man} Computer: #{machine}, computer wins!"

prompt "Would you like to play again?(y/n)"
answer = gets.chomp.downcase
if answer == "y"
  nil
else
  prompt "Thanks for playing!"
  break
end
end