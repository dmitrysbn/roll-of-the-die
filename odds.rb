number_of_permutations = 0
totals_count = Hash.new{0}

(1..6).to_a.each do |number1|
  (1..6).to_a.each do |number2|
    total = number1 + number2

    #number_of_permutations += 1

    totals_count["#{total}"] += 1
  end
end

totals_count.each do |total, times_occurs|
  puts "#The odds of #{total} coming up are #{(times_occurs / 36.0 * 100).round}%"
end
