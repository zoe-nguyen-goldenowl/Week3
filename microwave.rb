class Microwave
    attr_accessor :time
    def initialize(time)
        @time = time
    end
    def timer
        arr = @time.to_s.chars
        l = arr.length
        p = Proc.new{|x| arr[x]+arr[x+1]}
    #    puts p.call(0)
        if l <= 2     
              key = @time.to_i
            if key <= 9
                return "00:0#{@time}"
            elsif  key > 9 && key < 60
                return "00:#{@time}"
            elsif  key < 70
                return "01:0#{(@time.to_i-60).to_s}"
            else
                return "01:#{@time.to_i-60}"
            end
        else  
            case  l
            when 4
                puts p.call(2).to_i
                if p.call(2).to_i > 60
                    return "#{p.call(0).to_i+1}:#{p.call(2).to_i-60}"
                else
                    return "#{p.call(0)}:#{p.call(2)}"
                end
            when 3 
                if p.call(1).to_i > 60
                    if arr[0].to_i < 9
                        return "0#{arr[0].to_i+1}:#{p.call(1).to_i-60}"
                    else
                        return "#{arr[0].to_i+1}:#{p.call(1).to_i-60}"
                    end
                else
                    return "0#{arr[0]}:#{p.call(1)}"
                end  
            end
        end

    end
   
end
puts Microwave.new(60).timer 
