def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  dot_separated_words.each{|num|
  return false if is_an_ip_number?(num) == false
}
true
end