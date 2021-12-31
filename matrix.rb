class Matrix
    attr_reader :str
    def initialize(str)
      @str = str
    end
    
    def rows
      arr = str.split(/\n/)
      arr = arr.map {|i| i.split.map(&:to_i)}
      arr
    end
  
    def columns
      arr = str.split(/\n/)
      arr = arr.map {|i| i.split.map(&:to_i)}
      arr.transpose
        
    end
  end
matrix = Matrix.new("1 2 3 \n 4 5 6 \n 7 8 9 \n 8 7 6")
p matrix.columns

=begin
your code should be able to spit out:

    A list of the rows, reading each row left-to-right while moving top-to-bottom across the rows,
    A list of the columns, reading each column top-to-bottom while moving from left-to-right.

The rows for our example matrix:

    9, 8, 7
    5, 3, 2
    6, 6, 7

And its columns:

    9, 5, 6
    8, 3, 6
    7, 2, 7

=end