# ###
# First poll, every elf is Go

# mass/3, round down, subtract 2

# sum of all inputs by (mass/3) - 2
# ##

def fuel_calcuation(mass)
  (mass/3) - 2
end

def calculate_total_fuel(masses)
  fuel_calcs = masses.map(&method(:fuel_calcuation))
  fuel_calcs.reduce(:+)
end

def run_program
  file = File.open("input.txt")
  file_data = file.readlines.map(&:chomp)
  masses = file_data.map(&:to_i)
  calculate_total_fuel(masses)
end
