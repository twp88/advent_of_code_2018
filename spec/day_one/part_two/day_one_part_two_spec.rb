require 'spec_helper'

describe DayOnePartTwo do
  subject { DayOnePartTwo }

  context '#call' do
    shared_examples 'returns correct repeated frequency' do
      it 'returns the correct first_repeat_frequency' do
        expect(subject.call(file)).to eq first_repeat_frequency
      end
    end

    context 'returns repeated zero' do
      let(:file) { 'spec/extra_files/day_one/zero.txt' }
      let(:first_repeat_frequency) { 0 }

      it_behaves_like 'returns correct repeated frequency'
    end

    context 'returns repeated two' do
      let(:file) { 'spec/extra_files/day_one/two.txt' }
      let(:first_repeat_frequency) { 2 }

      it_behaves_like 'returns correct repeated frequency'
    end
  end
end
