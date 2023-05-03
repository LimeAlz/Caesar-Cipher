def overflow(num,casel)
  if(casel == "U")
     if (num > 90)
      num = num -26
     end
  elsif(casel =="L")
    if(num>122)
      num = num -26
  end
  return num
end

end

def caesar(text, number)
  new_string = ""
  casel = ""
  for i in 0...text.length
    if (text[i].ord >= 65 and text[i].ord <= 90)
      casel = 'U'
      new_string << overflow((text[i].ord + number.to_i),casel).chr
    elsif (text[i].ord >= 97 and text[i].ord <= 122)
      casel ="L"
      new_string << overflow((text[i].ord + number.to_i),casel).chr
    else
      new_string << text[i]
    end
  end
  return new_string
end

puts "Please enter the text to be ciphered."
text = gets
puts "Enter the key "
key = gets

cipher_text = caesar(text, key)
puts "Your cipher text is #{cipher_text}"
