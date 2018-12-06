# Returns correct frequency
class DayOne
  STARTING_FREQUENCY = 0
  def self.call(file)
    instructions = parse_file(file).map(&:to_i)
    instructions.inject(0) { |sum, x| sum + x }
  end

  def self.parse_file(file)
    File.read(file).split("\n")
  end
end
