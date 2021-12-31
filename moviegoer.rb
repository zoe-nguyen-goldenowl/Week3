# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError ; end
class Moviegoer
  attr_reader :age, :member

  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    @age >= 60 ? 10 : 15
  end

  def watch_scary_movie?
    @age >=18 ? true : false# This is a custom exception that you can use in your code
    class NotMovieClubMemberError < RuntimeError
    end
    class Moviegoer
      attr_reader :age, :member
    
      def initialize(age, member: false)
        @age = age
        @member = member
      end
    
      def ticket_price
        @age >= 60 ? 10 : 15
      end
    
      def watch_scary_movie?
        @age >=18 ? true : false 
      end
    
      # Popcorn is 🍿
      def claim_free_popcorn!
       @member ? '🍿' : (raise NotMovieClubMemberError)
      end
    end
     
  end
 

=begin
In this exercise you will build out rules for a movie theater's website.

task1: Check if a moviegoer is entitled to the seniors' discount
The theatre offers a discount for "old-age-pensions". Anyone who is 60 or older pays 10.00 for a ticket. 
Anyone younger pays the full 15.00.
Write the Moviegoer#ticket_price method using a ternary statement.

task2: Check if a moviegoer is allowed to see scary movies
The cinema has a simplified age-verification system. If you are 18 or over you can watch scary movies. If you are younger,
you cannot.
Implement the Moviegoer.watch_scary_movie? method. It should return whether someone is allowed to watch the movie or not.

task3: Check if a moviegoer is entitled to free popcorn

The cinema has a Movie Club program. Members get free popcorn when they watch any movie.

Implement the Moviegoer.claim_free_popcorn! method. If a viewer is a movie club member, they should be rewarded with their
free popcorn. If they are not, the method should raise the NotMovieClubMemberError exception defined at the top of the code.

=end