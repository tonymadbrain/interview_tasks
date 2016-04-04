str = "qwerty"

# first method
res = ""
i = str.length-1
until i < 0
  res += str[i]
  i -= 1
end
puts res

# second method
str3 = "qwerty"
half_l = str3.length / 2
half_l.times {|i| str3[i], str3[-i-1] = str3[-i-1], str3[i] }
puts str3

# third
str2 = "qwerty"
res2 = str2.split(/\s+/).map{|w|wl=w.length-1;(0..wl).map{|i|w[wl-i]}.join}.join(' ')
puts res2

# ruby method
puts str.reverse
