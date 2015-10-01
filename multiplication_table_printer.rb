class MultiplicationTablePrinter
  def initialize(prime_numbers)
    @prime_numbers = prime_numbers
    @column_width = column_width # Determine column width for nicely aligned table
  end

  def print_table
    puts header_row
    puts header_row.size.times.map { '-' }.join
    multiplication_rows.each { |row| puts row }
  end

  private

  def multiplication_rows
    @prime_numbers.map do |current_num|
      row_string = ''
      row_string << formatted_number_string(current_num)
      row_string << '|'
      @prime_numbers.each { |prime_num| row_string << formatted_number_string(current_num * prime_num) }
      row_string
    end
  end

  def header_row
    header_row_string = ''
    @column_width.times { header_row_string << ' ' }
    header_row_string << '|'
    @prime_numbers.each { |num| header_row_string << formatted_number_string(num) }
    header_row_string
  end

  def column_width
    highest_product = @prime_numbers.max * @prime_numbers.max
    highest_product.to_s.size + 1 # +1 for spacing
  end

  def formatted_number_string(number)
    number_of_spaces = @column_width - number.to_s.size
    (number_of_spaces.times.map { ' ' } + [number.to_s]).join
  end

end
