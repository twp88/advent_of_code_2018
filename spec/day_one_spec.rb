require 'spec_helper'

describe DayOne do
  subject { DayOne }

  let(:file) { './extra_files/day_one.txt' }
  let(:correct_resulting_frequency) { 0 }

  context 'when called' do
    it 'returns resulting frequency' do
      expect(subject.call(file)).to eq correct_resulting_frequency
    end
  end
end
