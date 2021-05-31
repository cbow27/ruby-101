def find_factors(number)
  array = []
  factor = number
 
  factor.times{ |num|
  next if num == 0
  if number % num == 0
      array.push(num)
    end
  }
  array
  

end

puts "Enter a number to see its factors"
answer = gets.chomp.to_i
puts "Factors of #{answer}:"
puts find_factors(answer)
puts answer
#Bonus 1: Thats the logic of finding factor
#Bonus 2: To output the numbers pushed to the 'factors' array