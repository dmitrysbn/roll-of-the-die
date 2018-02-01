results = []

5.times do
  results << Random.rand(6) + 1
end

results.each do |result|
  puts "The result of your roll is #{result}"
end

results.sort!

puts "The lowest number is #{results.first}."
puts "The highest number is #{results.last}."
