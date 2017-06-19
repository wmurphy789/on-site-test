def calculate(number1=nil, number2=nil, operator=nil)
	if operator == "+"
		result = number1 + number2
	elsif operator == "-"
		result = number1 - number2
	elsif operator == "*"
		result = number1 * number2
	elsif operator == "/"
		result = number1 / number2
	else
		result = "This isn't an operation this calculator does"
	end

	return result
end

def start
	puts "Format to enter an equation 'number number operation(i.e. 5 5 +)' \nEnter q to quit the calculator"

	loop do
	  print "> "
	  question = gets.chomp.split(" ")

	  return if question[0] == 'q'

	  number1 = question[0].to_i
	  number2 = question[1].to_i
	  operator = question[2]

	  result = calculate(number1, number2, operator)
	  puts result
	end
end
