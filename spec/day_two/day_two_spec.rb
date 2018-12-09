require 'spec_helper'

describe DayTwo do
  subject { DayTwo.new }

  describe '#call' do
    shared_examples 'returns the correct checksum' do
      it 'returns the number 12' do
        expect(subject.call(file)).to eq check_sum
      end
    end

    context 'returns checksum 12' do
      let(:file) { 'spec/extra_files/day_two/twelve.txt' }
      let(:check_sum) { 12 }

      it_behaves_like 'returns the correct checksum'
    end

    context 'returns checksum 20' do
      let(:file) { 'spec/extra_files/day_two/twenty.txt' }
      let(:check_sum) { 20 }

      it_behaves_like 'returns the correct checksum'
    end
  end
end
