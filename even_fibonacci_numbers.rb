set = [1,2]

i = 2
while i < 35 # This condition could be improved.
  set[i] = set[i - 2] + set[i - 1]
  i+=1
end
sum = 0

set.delete_if{|i| (i%2 == 1) || (i > 4000000)}
set
set.each {|i| sum +=i}

sum
