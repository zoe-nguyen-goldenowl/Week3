class Microwave
    attr_accessor :time
    def initialize(time)
        @time = time
    end
    def timer
        l = @time.to_s.length
        if l <= 2     
              key = @time.to_i
            if key <= 9
                return "'00:0#{@time}'"
            elsif  key > 9 && key < 60
                return "'00:#{@time}'"
            elsif  key == 60
                return "'01:00'"
            else
                return "'01:#{@time.to_i-60}'"
            end
        else  
            case  l
            when 4
                if @time[2,3].to_i > 60
                    return "'#{@time[0].to_i+1}:#{@time[1,2].to_i-60}'"
                else
                    return "'#{@time[0,1]}:#{@time[2,3]}}'"
                end
            else 
                if @time[1,2].to_i > 60
                    if @time[0].to_i+1 < 10
                        return "'0#{@time[0].to_i+1}:#{@time[1,2].to_i-60}'"
                    else
                        return "'#{@time[0].to_i+1}:#{@time[1,2].to_i-60}'"
                    end
                else
                    return "'0#{@time[0]}:#{@time[1,2]}}'"
                end  
            end
        end

    end
   
end
puts Microwave.new(1).timer 
