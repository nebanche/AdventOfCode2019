

def fuel_equation(mass)
  mass/3 -2
end

def fuel_calcuation(mass)
  needed_fuel = fuel_equation(mass)
  if needed_fuel <= 0
    return 0
  else
    return needed_fuel + fuel_calcuation(needed_fuel)
  end
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
