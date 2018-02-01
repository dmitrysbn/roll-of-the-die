number_of_permutations = 0
totals_count = Hash.new{0}

(1..6).to_a.each do |number1|
  (1..6).to_a.each do |number2|
    total = number1 + number2

    #number_of_permutations += 1

    totals_count["#{total}"] += 1
  end
end

# we will use the below method twice
def probability(times_occurs)
  return (times_occurs / 36.0 * 100).round
end

totals_count.each do |total, times_occurs|
  puts "#The odds of #{total} coming up are #{probability(times_occurs)}%"
end

totals_sorted = totals_count.sort_by do |total, times_occurs|
  times_occurs
end

most_likely_combo = totals_sorted.to_h.keys.last
most_likely_combo_chance = probability(totals_sorted.to_h.values.last)

puts "#{most_likely_combo} is most likely to come up with a #{most_likely_combo_chance}% chance."
