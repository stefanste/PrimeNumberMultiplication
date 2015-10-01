class MultiplicationTablePrinter
  def initialize(prime_numbers)
    @prime_numbers = prime_numbers
    @column_width = column_width
  end

  def print_table
    puts header_row
    puts header_row.size.times.map { '-' }.join
    #print_multiplication_rows
  end

  private

  def header_row
    header_row_string = ''
    @column_width.times { header_row_string << ' ' }
    header_row_string << '|'
    @prime_numbers.each { |num| header_row_string << number_string(num) }
    header_row_string
  end

  def column_width
    highest_product = @prime_numbers.max * @prime_numbers.max
    highest_product.to_s.size + 1 # +1 for spacing
  end

  def number_string(number)
    number_of_spaces = @column_width - number.to_s.size
    (number_of_spaces.times.map { ' ' } + [number.to_s]).join
  end

end
