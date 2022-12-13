class InteractiveCalculator
  
  def initialize(io = Kernel)
    @io = io
  end
  
  def run
    @io.puts "Hello. I will subtract two numbers.\nPlease enter a number"
    num1 = @io.gets.chomp.to_i
    @io.puts "Please enter another number"
    num2 = @io.gets.chomp.to_i
    @io.puts "Here is your result:\n#{num1} - #{num2} = #{num1 - num2}"
  end
  
end