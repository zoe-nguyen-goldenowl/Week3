class BirdCount
    def self.last_week
     bird=[0, 2, 5, 3, 7, 8, 4]
     bird
    end
  
    def initialize(birds_per_day)
      @birds_per_day = birds_per_day
    end
  
    def yesterday
        arr = @birds_per_day
        arr[-2]
    end
  
    def total
        arr = @birds_per_day
        arr.sum
    end
  
    def busy_days
        arr = @birds_per_day
        item = 0
        arr.each do |i|
            if i.to_i >= 5
                item += 1
            end
        end
        item
    end
  
    def day_without_birds?
        arr = @birds_per_day
       if arr.include? 0
        true
       else
        false
       end
    end
  end
    BirdCount.last_week
    birds_per_day = [2, 5, 0, 7, 4, 1]
    bird_count = BirdCount.new(birds_per_day)
    bird_count.yesterday
    ount.new(birds_per_day)
    bird_count.total
    bird_count.busy_days
    bird_count.day_without_birds?

=begin
You're an avid bird watcher that keeps track of how many birds have visited your garden
in the last seven days.
You have five tasks, all dealing with the numbers of birds that visited your garden.

task1: Check what the counts were last week
For comparison purposes, you always keep a copy of last week's counts nearby, which were:
 0, 2, 5, 3, 7, 8 and 4. Implement the BirdCount.last_week method that returns last week's counts

 task2: Check how many birds visited yesterday
Implement the BirdCount#yesterday method to return how many birds visited your garden yesterday.
the bird counts are ordered by day, with the first element being the count of the oldest day,
and the last element being today's count.

task3: Calculate the total number of visiting birds
Implement the BirdCount#total method to return the total number of birds that have visited your
garden

task4: Calculate the number of busy days
Some days are busier than others. A busy day is one where five or more birds have visited your 
garden. Implement the BirdCount#busy_days method to return the number of busy days

task5: Check if there was a day with no visiting birds
Implement the BirdCount#day_without_birds? method that returns true if there was a day at which
 zero birds visited the garden; otherwise, return false.

