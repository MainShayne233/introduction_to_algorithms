def problem1
  [1, 60, 3600, 86400, 2592000, 31536000, 3153600000].each do |sec|
    n = 0
    while Math.log2(n) < sec * 10**6
      n+=1
    end
    puts n
  end
end

problem1
