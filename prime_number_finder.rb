class PrimeNumberFinder
  def initialize(amount_to_find)
    @amount_to_find = amount_to_find
    @prime_numbers = []
  end

  def call
    current_number = 2 # Zero and one aren't prime numbers
    loop do
      @prime_numbers << current_number if is_a_prime_number?(current_number)
      break if @prime_numbers.size == @amount_to_find
      current_number += 1
    end

    @prime_numbers
  end

  private

  def is_a_prime_number?(number)
    (2..number/2).none? {|divisor| number % divisor == 0 }
  end

end
