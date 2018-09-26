
(1..10).reverse_each { |n|
if
  n > 1
  puts "#{n} little monkeys jumping on the bed,"
  puts "One fell off and bumped his head,"
  puts "Mama called the doctor and the doctor said,"
  puts "'No more monkeys jumping on the bed!'"
  puts "\n"

elsif
  n == 1
  puts "#{n} little monkey jumping on the bed,"
  puts "He fell off and bumped his head,"
  puts "Mama called the doctor and the doctor said,"
  puts "'Get those monkeys right to bed!'"
end
}
