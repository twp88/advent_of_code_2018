# Finds first repeated frequency
require 'set'
class DayOnePartTwo
  attr_accessor :number_store

  def self.call(file)
    instructions = parse_file(file)
    iterate_over_instructions(instructions)
    @the_number
  end

  def self.parse_file(file)
    File.read(file).split("\n").map(&:to_i)
  end

  def self.iterate_over_instructions(instructions)
    number_store = Set.new
    sum = 0
    @the_number = nil
    instructions.each do |x|
      sum += x
      if number_store.include?(sum)
        @the_number = sum
        break
      end

      number_store << sum
    end
  end
end
