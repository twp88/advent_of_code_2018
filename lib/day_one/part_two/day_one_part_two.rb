# Finds first repeated frequency
class DayOnePartTwo
  attr_accessor :number_store

  def self.call(file)
    instructions = parse_file(file)
    iterate_over_instructions(instructions)
  end

  def self.parse_file(file)
    File.read(file).split("\n").map(&:to_i)
  end

  def self.iterate_over_instructions(instructions)
    @number_store = [0]
    @count = 0

    instructions.each do |ins|
      @count += ins
      return @count if @number_store.include?(@count)

      @number_store << @count
    end
  end
end
