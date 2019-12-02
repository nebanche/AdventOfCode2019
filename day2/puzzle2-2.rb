

def int_code_compute(input)
  index = 0
  while true do
    break if input[index] == 99
    value_1 = input[input[index+1]]
    value_2 = input[input[index+2]]
    result_index = input[index+3]
    if input[index] == 1
      input[result_index] = value_1 + value_2
    elsif input[index] == 2
      input[result_index] = value_1 * value_2
    end
    index += 4
  end
  return input
end


def run_program
  99.times do |number1|
    99.times do |number2|
      file = File.open("input.txt")
      file_data = file.read.split(',')
      input = file_data.map(&:to_i)
      input[1] = number1
      input[2] = number2
      int_code_compute(input)
      puts "the right answer is #{number1}, #{number2}" if input[0] == 19690720
    end
  end
end
