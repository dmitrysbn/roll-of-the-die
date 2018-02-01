dice1 = Random.rand(6) + 1
dice2 = Random.rand(6) + 1

puts "The results of your rolls are #{dice1} and #{dice2}."

if dice1 == dice2
  puts "Doubles!"
end

puts "Your total is #{dice1 + dice2}."
