require 'spec_helper'

describe DayTwo do
  subject { DayTwo.new }
  let(:file) { 'spec/extra_files/day_two/twelve.txt' }
  let(:twelve) { 12 }

  context '#call' do
    it 'returns the number 12' do
      expect(subject.call(file)).to eq twelve
    end
  end
end
