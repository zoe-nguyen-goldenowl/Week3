
class SimpleCalculator
    class UnsupportedOperation  < StandardError; end
    ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
    def self.calculate(first_operand, second_operand, operation)
        if !ALLOWED_OPERATIONS.include? operation
            raise SimpleCalculator::UnsupportedOperation
        elsif !first_operand.is_a?(Numeric) || !second_operand.is_a?(Numeric)
            raise  ArgumentError
        end
         
        if operation == "+"
            p "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
        elsif operation == "/"
            begin
                p "#{first_operand} / #{second_operand} = #{first_operand/second_operand}"
            rescue ZeroDivisionError => e
                p "Division by zero is not allowed."
            end
        elsif operation == "*"
                p "#{first_operand} * #{second_operand} = #{first_operand*second_operand}"
        end
    end
end
SimpleCalculator.calculate(1, '2', '+')
=begin
In this exercise you will be building error handling for a simple calculator.
The goal is to have a working calculator that returns a string with the following pattern: 16 + 51 = 67, 
when provided with arguments 16, 51 and +.

    task1: Handle the code that may raise errors within the method calculate
    The main method for implementation in this task will be the class method SimpleCalculator.calculate() method. 
    It takes three arguments. The first two arguments are numbers on which an operation is going to be conducted. 
    The third argument is of type string and for this exercise it is necessary to implement the following operations:

    addition using the + string
    multiplication using the * string
    division using the / string

    task2: Handle illegal operations
    Update the SimpleCalculator.calculate() method to raise an UnsupportedOperation exception 
    for unknown operation symbols.

    task3: Handle DivideByZero exceptions
    Update the SimpleCalculator.calculate() to handle ZeroDivisionError exceptions. The handling code should return 
    the string with the content Division by zero is not allowed.. Any other exception should not be handled by the 
    SimpleCalculator.calculate() method.
=end
