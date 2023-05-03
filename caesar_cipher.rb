def caesar(text, number)
  new_string = ""
  for i in 0...text.length
    (text[i] == " ") ? new_string << " " : new_string << (text[i].ord + 3).chr
  end
  return new_string
end

puts "Please enter the text to be ciphered."
text = gets
puts "Enter the key "
key = gets

cipher_text = caesar(text, key)
puts "Your cipher text is #{cipher_text}"
