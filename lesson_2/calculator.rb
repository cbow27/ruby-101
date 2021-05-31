# ask for two numbers
# asks for the type of operation to perform
# display the results
def prompt(message)
  puts "=> #{message}"
end

def number(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def operation_to_message(word)
  case word
  when "add"
  "adding"
  when "subtract"
  "subtracting"
  when "mulitply"
  "multiplying"
  when "divide"
  "dividing"
  end
end

name = nil
number1 = nil
number2 = nil
last = nil

loop do
  loop do
  prompt("Welcome to calculator, enter your name")
name = gets.chomp
   if name.empty?
   prompt("Make sure you enter in your name")
   else
    break
   end
  end

prompt("Welcome to calculator #{name}!")
  
loop do
prompt("Enter first number")
number1 = gets.chomp
break if number(number1)
prompt("Invalid input try again")
end

loop do 
prompt("Please enter second number:")
number2 = gets.chomp
break if number(number2)
prompt("Invalid input try again")
end

operator_prompt = <<-MSG
What operation would you like to perform?
-add
-subtract
-mulitply
-divide
MSG

prompt(operator_prompt)

loop do
  answer = gets.chomp

prompt("#{operation_to_message(answer)} the two numbers...")

case answer
when "add" 
  puts number1.to_i + number2.to_i
  break
when "subtract" 
  puts number1.to_i - number2.to_i
  break
when "multiply" 
  puts number1.to_i * number2.to_i 
  break
when "divide"
  if number2.to_i == 0
    prompt("Sorry, a denominator cant have a value of 0")
  else
    puts number1.to_f / number2.to_f
    break
  end
else
  prompt("Invalid input, must choose 'add', 'subtract', 'multiply', or 'divide'.")
end
end

prompt('Would you to use calculator again?(y/n)')
last = gets.chomp.downcase
if last == "y"
  nil
else
  break
end
end
prompt("Thanks for using calculator #{name}!")