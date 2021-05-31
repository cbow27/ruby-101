munsters_description = "The Munsters are creepy in a good way."

#1.
array1 = munsters_description.upcase.split
array1[0].gsub!("T", "t")
array1[1].gsub!("M","m")
puts array1.join(" ")

#2.
array = munsters_description.split
array[1].gsub!("M","m")
puts array.join(" ")

#3. 
 puts munsters_description.downcase

 #4.
puts munsters_description.upcase
