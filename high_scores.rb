class HighScores
    attr_reader :scores
    def initialize(scores)
        @scores = scores
    end
    def latest
       scores.last
    end
    def personal_best
       scores.max
    end
    def personal_top_three
        scores.max(3)
    end
    def latest_is_personal_best?
        latest == personal_best
    end
end
scores = [30, 50, 120, 10]
p HighScores.new(scores).latest


=begin

Manage a game player's High Score list.
Your task is to build a high-score component of the classic Frogger game, one of the highest selling and addictive 
games of all time, and a classic of the arcade era. Your task is to write methods that return the highest score from
the list, the last added score and the three highest scores.

In this exercise you're going to instantiate a class and add some instance methods.
 http://ruby-for-beginners.rubymonstas.org/writing_classes/initializers.html

A HighScore accepts an array with one or more numbers, each representing one 'game score'. 
The Array class can offer inspiration for working with arrays. https://ruby-doc.org/core-2.5.1/Array.html

=end