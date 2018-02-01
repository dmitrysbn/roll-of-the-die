number_of_permutations = 0

(1..6).to_a.each do |number1|
  (1..6).to_a.each do |number2|
    puts "Dice Roll: #{number1}, " + "#{number2} " + "Total: #{number1 + number2}"
    number_of_permutations += 1
  end
end

puts "There are #{number_of_permutations} possible permutations."
