#!/bin/ruby

require 'json'
require 'stringio'

input = File.open('input10.txt')

# Complete the minimumSwaps function below.
def minimum_swaps(arr)
  res = 0
  checked = {}
  arr.each_with_index do |a, i|
    checked[a] = true if a == i + 1
    next if checked[a]
    count = 1
    b = arr[a - 1]
    checked[b] = true
    until b == a
      b = arr[b - 1]
      checked[b] = true
      count += 1
    end
    res += count - 1
  end
  res
end

arr = input.read.rstrip.split(' ').map(&:to_i)

puts minimum_swaps(arr)

