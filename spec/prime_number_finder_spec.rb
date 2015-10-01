require_relative '../prime_number_finder'

describe PrimeNumberFinder do
  context "Correctly finding the given amount of prime numbers" do
    specify do
      expect(PrimeNumberFinder.new(10).call).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
      expect(PrimeNumberFinder.new(5).call).to eq [2, 3, 5, 7, 11]
      expect(PrimeNumberFinder.new(3).call).to eq [2, 3, 5]
    end
  end
end
