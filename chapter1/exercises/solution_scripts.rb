def exercise1_2_2
  (0..100).each {|n| puts n if n < 8*Math.log2(n)}
end


def exercise1_2_3
  n = 1
  until 2**n > 100*n**2; n +=1; end
  puts n
end
