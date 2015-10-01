require_relative '../multiplication_table_printer'

describe MultiplicationTablePrinter do
  context "Printing out the multiplication table" do
    let(:table_printer) { MultiplicationTablePrinter.new([2, 3, 5]) }
    specify do
      expect(table_printer.send(:header_row)).to eq "   |  2  3  5"
    end
  end
end
