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

end