class Meetup
  require 'date'
  CON=['first', 'second', 'third', 'fourth', 'fifth', 'last']
  def initialize (month, year)
    @month = month
    @year = year
  end
  def day(d, teenth)
    year = @year
    month = @month
    if CON.include?(teenth)
          key = CON.index(teenth)+1
          k=1;
           day = d.downcase+'?'
           start_day = Date.new(year.to_i, month.to_i)
           end_day =  Date.civil(year.to_i, month.to_i, -1)
            (start_day..end_day).select do |i| 
              if i.send(day)
                if k == key
                  puts i
                end
                k +=1
              end
            end
    end
  end
end
m = Meetup.new(12,2021)
m.day("monday", "second" )


