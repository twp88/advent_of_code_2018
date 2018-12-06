require 'spec_helper'

describe DayOne do
  describe '#call' do
    shared_examples 'returns resulting frequency' do
      it 'returns the correct_resulting_frequency' do
        expect(DayOne.call(file)).to eq correct_resulting_frequency
      end
    end

    context 'when resulting frequency is 0' do
      let(:correct_resulting_frequency) { 0 }
      let(:file) { './spec/extra_files/day_one/zero.txt' }

      it_behaves_like 'returns resulting frequency'
    end

    context 'when resulting frequency is 3' do
      let(:correct_resulting_frequency) { 3 }
      let(:file) { './spec/extra_files/day_one/three.txt' }

      it_behaves_like 'returns resulting frequency'
    end
  end
end
