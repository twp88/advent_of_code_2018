# Counts doubles and triples and multiplies
class DayTwo
  def initialize
    @num_of_doubles = 0
    @num_of_triples = 0
  end

  def call(file)
    input = parse_file(file)
    puts "#{input}"
    count_doubles(input)
    count_triples(input)
    multiply
  end

  private

  def parse_file(file)
    input = File.read(file).split("\n")
    input.map! { |s| s.split('') }
  end

  def count_doubles(input)
    input.each do |mini_arr|
      mini_arr.each do |s|
        if mini_arr.count(s) == 2
          @num_of_doubles += 1
          break
        end
      end
    end
  end

  def count_triples(input)
    input.each do |mini_arr|
      mini_arr.each do |s|
        if mini_arr.count(s) == 3
          @num_of_triples += 1
          break
        end
      end
    end
  end

  def multiply
    @num_of_doubles * @num_of_triples
  end
end
