#Prints from 1 to 100
i = 0
while i < 101
  
  #Prints 'Fizz' after multiples of three
  if i%3 == 0
    puts "Fizz"
  
  #Prints 'Buzz' after multiples of five
  elsif i%5 == 0
    puts "Buzz"
  else puts i
  end
  i+=1
end


#often asked in job interviews