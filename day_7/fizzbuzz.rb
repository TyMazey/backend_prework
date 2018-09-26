fizzbuzz = (1..100).each { |n|

if
  (n % 5) == 0 && (n % 3) == 0
  n = "FizzBuzz"

elsif
  (n % 3) == 0
  n = "Fizz"

elsif
  (n % 5) == 0
  n = "Buzz"
end

puts n
}
