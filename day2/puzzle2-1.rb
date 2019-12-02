

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
  file = File.open("input.txt")
  file_data = file.read.split(',')
  input = file_data.map(&:to_i)
  input[1] = 12
  input[2] = 2
  int_code_compute(input)
  input[0]
end


def test
  return "error1" if run_test("test1") != [2,0,0,0,99]
  return "error2" if run_test("test2") != [2,3,0,6,99]
  return "error3" if run_test("test3") != [2,4,4,5,99,9801]
  return "error4" if run_test("test4") != [30,1,1,4,2,5,6,0,99]
end

def run_test(filename)
  file = File.open("#{filename}.txt")
  file_data = file.read.split(',')
  input = file_data.map(&:to_i)
  compute(input)
end
