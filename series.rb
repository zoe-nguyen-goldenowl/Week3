class Series
    attr_reader :str
    def initialize(str)
        @str = str
    end

    def slices(sl) 
       if sl > str.length
        raise ArgumentError
       end
       p str.each_char.each_cons(sl).map(&:join)
       
    end
end
series = Series.new('01234')
series.slices(2)

=begin
For example, the string "49142" has the following 3-digit series:

    "491"
    "914"
    "142"

And the following 4-digit series:

    "4914"
    "9142"

And if you ask for a 6-digit series from a 5-digit string, you deserve whatever you get.
Note that these series are only required to occupy adjacent positions in the input; the digits need not be numerically consecutive.
In this exercise you're practicing iterating over an array, meaning: executing an operation on each element of an array.
Ruby has many useful built-in methods for iterations. Take a look at this article.
Most of the methods listed in the article are not methods specifically for Array, but come from Enumerable.
The article doesn't list iterating over consecutive elements. The first challenge is to find a method that does.
=end