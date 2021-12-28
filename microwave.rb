class Microwave
    attr_accessor :time
    def initialize(time)
        @time = time
    end
    def timer
        l = @time.length
        if l <= 2     
              key = @time.to_i
            if key <= 9
                puts "'00:0#{@time}'"
            elsif  key > 9 && key < 60
                puts "'00:#{@time}'"
            elsif  key == 60
                puts "'01:00'"
            else
                puts "'01:#{@time.to_i-60}'"
            end
        else  
            case  l
            when 4
                if @time[2,3].to_i > 60
                    puts "'#{@time[0].to_i+1}:#{@time[1,2].to_i-60}'"
                else
                    puts "'#{@time[0,1]}:#{@time[2,3]}}'"
                end
            else 
                if @time[1,2].to_i > 60
                    if @time[0].to_i+1 < 10
                        puts "'0#{@time[0].to_i+1}:#{@time[1,2].to_i-60}'"
                    else
                        puts "'#{@time[0].to_i+1}:#{@time[1,2].to_i-60}'"
                    end
                else
                    puts "'0#{@time[0]}:#{@time[1,2]}}'"
                end  
            end
        end

    end
   
end
m =Microwave.new("120")
m.timer