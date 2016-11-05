puts "Enter your birthdate in MMDDYYYY format"
birthDate = gets
number = birthDate[0].to_i + birthDate[1].to_i + birthDate[2].to_i + birthDate[3].to_i + birthDate[4].to_i + birthDate[5].to_i + birthDate[6].to_i + birthDate[7].to_i
number = number.to_s
number = number[0].to_i + number[1].to_i

if number > 9
	number = number[0].to_i + number[1].to_i
end

case number
when 1
 	puts "Your numerology number is #{number}. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
when 2
 	puts "Your numerology number is #{number}. You are a mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
when 3
    puts "Your numerology number is #{number}. Number three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
when 4
    puts "Your numerology number is #{number}. You are a worker. Practical, with a love of detail. Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
when 5
    puts "Your numerology number is #{number}. You are a freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
when 6
    puts "Your numerology number is #{number}. You are a peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
when 7
    puts "Your numerology number is #{number}. You are a deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
when 8
    puts "Your numerology number is #{number}. You are a manager. Number eight is a strong, successful, and material vibration. Ruled by Saturn."
when 9
    puts "Your numerology number is #{number}. You are a teacher. Number nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
else
	puts "Uh Oh! We don't have a birth path number for you!"
end