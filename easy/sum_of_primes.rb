require 'prime'

primes = Prime.take(1000)
sum = primes.inject(0, :+)
print sum