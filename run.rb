require_relative 'prime_number_finder'
require_relative 'multiplication_table_printer'

puts "How many prime numbers would you like to generate?"
amount = gets.chomp.to_i

prime_numbers = PrimeNumberFinder.new(amount).call
MultiplicationTablePrinter.new(prime_numbers).print_table
