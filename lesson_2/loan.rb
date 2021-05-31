def valid_number(num)
  num.to_i.to_s == num
end
amount = nil
apr = nil
years = nil


loop do
  puts "Please enter the loan amount"
  amount = gets.chomp
  if amount == "0"
    puts "Invalid, must be non 0 integer"
  elsif valid_number(amount)
    break
  else
    puts "Invalid input"
  end
end

loop do
  puts "Please enter the APR"
  apr = gets.chomp
  if apr == "0"
    puts "Invalid, must be non 0 integer"
  elsif valid_number(apr)
    break
  else
    puts "Invalid input"
  end
end

loop do
  puts "How long is the loan duration? (years)"
  years = gets.chomp
  if years == "0"
    puts "Invalid, must be non 0 integer"
  elsif valid_number(years)
    break
  else
    puts "Invalid input"
  end
end

apr2 = apr.to_f / 100
interest = apr2 / 12
months = years.to_i * 12
payments = amount.to_f * (interest / (1 - (1 + interest)**(-months)))

puts "Monthly interest rate: #{interest}"
puts "Loan duration in months: #{months}"
puts "Monthly payments: #{payments}"
