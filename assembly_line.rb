class AssemblyLine
    def initialize(speed)
      @speed = speed
    end
  
    def production_rate_per_hour
      if @speed <= 4
        @speed*221
      elsif @speed <=8 && @speed >= 5
        ans = @speed*0.9*221
        ans.to_f
      elsif @speed == 9
        ans = @speed*0.8*221
        ans.to_f
      else
        ans = @speed*0.77*221
        ans.to_f
      end
    end
  
    def working_items_per_minute
       ans = production_rate_per_hour.to_i/60
        ans.floor
    end
  end
=begin
In this exercise you'll be writing code to analyze the production of an assembly line in a car 
factory. The assembly line's speed can range from 0 (off) to 10 (maximum).
At its slowest speed (1), 221 cars are produced each hour. The production increases 
linearly with the speed. So with the speed set to 4, it should produce 4 * 221 = 884 cars per hour. 
However, higher speeds increase the likelihood that faulty cars are produced, which then have 
to be discarded. The following table shows how speed influences the success rate:

    1 to 4: 100% success rate.
    5 to 8: 90% success rate.
    9: 80% success rate.
    10: 77% success rate.
task1: Calculate the production rate per hour
task2: Calculate the number of working items produced per minute
=end