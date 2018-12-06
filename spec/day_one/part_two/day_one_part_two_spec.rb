require 'spec_helper'

describe DayOnePartTwo do
  subject { DayOnePartTwo }

  let(:file_zero) { 'spec/extra_files/day_one/zero.txt' }
  let(:first_repeat_frequency) { 0 }

  context 'when called' do
    it 'returns the correct first_repeat_frequency' do
      expect(subject.call(file_zero)).to eq first_repeat_frequency
    end
  end
end
