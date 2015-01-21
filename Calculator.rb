
#Create a class Calculator, which performs addition and subtraction of two numbers at a time.
class Calculator
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end
end


puts Calculator.new.add(2,5)
puts Calculator.new.subtract(2,5)
