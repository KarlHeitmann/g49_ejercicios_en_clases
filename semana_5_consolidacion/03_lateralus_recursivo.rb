def fibonacci(n)
  if (n <= 0)
    raise StandardError.new "ERROR, no se puede calcular el fibonacci de un número negativo"
  elsif (n == 1) or (n == 2)
    return 1
  else
    return fibonacci(n - 2) + fibonacci(n - 1)
  end
end

puts fibonacci(ARGV[0].to_i)