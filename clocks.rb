h_angle = 30
m_angle = 6

hour = ARGV[0].to_i
minute = ARGV[1].to_i

if hour > 24 || minute > 60
  puts "Bad time"
  exit 1
end

hour = hour - 12 if hour > 12

#debug
# puts "#{hour}:#{minute}"

hour_angle = hour * h_angle
minute_angle = minute * m_angle

#debug
# puts "#{hour_angle} & #{minute_angle}"

result_1 = hour_angle - minute_angle
result_1 = result_1.to_s.sub!(/\-/, '').to_i
result_2 = 360 - result_1

puts "Angle: #{result_1} or #{result_2}"


