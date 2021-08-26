# fibonacci(1) = 1 # DEFINICION
# fibonacci(2) = 1 # DEFINICION
# fibonacci(n) = fibonacci(n - 1) + fibonacci(n - 2)
#

def fibonacci(n)
  if n <= 2
    return 1
  else
    return fibonacci(n-1) + fibonacci(n-2)
  end
end

# puts fibonacci(1)
# puts fibonacci(2)
a = fibonacci(ARGV[0].to_i)
a = a + 1
