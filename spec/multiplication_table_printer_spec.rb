require_relative '../multiplication_table_printer'

describe MultiplicationTablePrinter do
  context "Printing out the multiplication table" do
    let(:table_printer) { MultiplicationTablePrinter.new([2, 3, 5, 7, 11]) }

    context "Printing the header row" do
      specify do
        expect(table_printer.send(:header_row)).to eq "    |   2   3   5   7  11"
      end
    end

    context "Printing the multiplication rows" do
      specify do
        expect(table_printer.send(:multiplication_rows)[0]).to eq "   2|   4   6  10  14  22"
        expect(table_printer.send(:multiplication_rows)[2]).to eq "   5|  10  15  25  35  55"
        expect(table_printer.send(:multiplication_rows)[4]).to eq "  11|  22  33  55  77 121"
      end
    end

  end
end
