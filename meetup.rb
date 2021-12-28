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
           day = d.downcase+'?'
           start_day = Date.new(year.to_i, month.to_i)
           end_day =  Date.civil(year.to_i, month.to_i, -1)
            a = (start_day..end_day).select {|i| i.send(day)}
            puts a
    end
  end
end
m = Meetup.new(12,2021)
m.day("monday", "first" )


