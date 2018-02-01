rolls = []
for i in 0..10
  rolls << "The result of your roll is #{Random.rand(6) + 1}."
end

rolls.sort!

puts rolls
