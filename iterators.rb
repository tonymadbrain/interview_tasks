i = 0
loop do
  i += 1
  puts "#{i}"
  break if i > 10
end

j = 0
loop do
  j += 1
  next if j % 2 == 0
  puts "#{j}"
  break if j > 10
end

10.times do |n|
  puts n
end
