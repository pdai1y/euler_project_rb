require 'spec_helper'

RSpec.describe EulerProject::SetOneToTen do

  let(:ep) { EulerProject }

  describe '#multiples_of_3_and_5' do
    it 'should return 23 with [1..9]' do
      expect(ep.multiples_of_3_and_5(1...10)).to eq(23)
    end

    it 'should return 233168 with [1..1000]' do
      expect(ep.multiples_of_3_and_5(1...1000)).to eq(233168)
    end
  end

  describe '#even_fibonacci_numbers' do
    it 'should return 9227463' do
      expect(ep.even_fibonacci_numbers).to eq(4613732)
    end
  end

  describe '#largest_prime_factor' do
    xit 'should return 29 with 13195' do
      expect(ep.largest_prime_factor(13195, 15)).to eq(29)
    end

    xit 'should return # with 600851475143' do
      expect(ep.largest_prime_factor(600851475143, 1000)).to eq()
    end
  end
end