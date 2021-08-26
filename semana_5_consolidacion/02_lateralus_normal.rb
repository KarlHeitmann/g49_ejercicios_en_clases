# lateralus es una canción de Tool, inspirada en la sucesión de fibonacci.
# Sucesión de fibonacci
# 1,1,2,3,5,8,13,21...
# Formula:
# fibo(0) = 1
# fibo(1) = 1
# fibo(n) = fibo(n-2) + fibo(n-1)

def fibo_normal(n)
  if (n <= 0)
    raise StandardError.new "ERROR, no se puede calcular el fibonacci de un número negativo"
  elsif (n == 1) or (n == 2)
    return 1
  else
    i = 2
    previous_fibo = 1
    current_fibo = 1
    while i <= n
      temp = current_fibo
      current_fibo = temp + previous_fibo
      previous_fibo = temp
      i += 1
    end
    return current_fibo
  end

end

a = fibo_normal(ARGV[0].to_i)
a = a + 1