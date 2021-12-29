class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    str = @line.split(":")
    return str[1].strip 
  end

  def log_level
    str = @line.split(":")
    s =str[0].delete! "[]"
    return  s.downcase.strip
  end

  def reformat
    arr = @line.split(":")
    s1 = arr[0].gsub("[" , "(")
    ans1 = s1.gsub("]" , ")").downcase
    s2 = arr[1].strip
     ans = s2 +" "+ans1
    return ans
  end
end
LogLineParser.new('[ERROR]: Invalid operation').message
LogLineParser.new("[WARNING]:  Disk almost full\r\n").message
LogLineParser.new('[ERROR]: Segmentation fault').reformat
LogLineParser.new('[INFO]: Operation completed').reformat

=begin 
In this exercise you'll be processing log-lines.
Each log line is a string formatted as follows: "[<LEVEL>]: <MESSAGE>".
There are three different log levels:
    INFO
    WARNING
    ERROR
You have three tasks, each of which will take a log line and ask you to do something with it. There are lots of ways to solve these tasks - choose your favourite methods from the examples above and see what you can come up with.
task1:
Get message from a log line
Implement the LogLineParser#message method to return a log line's message
LogLineParser.new('[ERROR]: Invalid operation').message
 => "Invalid operation"
Any leading or trailing white space should be removed:
LogLineParser.new("[WARNING]:  Disk almost full\r\n").message
 => "Disk almost full"

 task2:
Implement the LogLineParser#log_level method to return a log line's log level,
 which should be returned in lowercase:
LogLineParser.new('[ERROR]: Invalid operation').log_level
 => "error"

task3:
Implement the LogLineParser#reformat method that reformats the log line,
putting the message first and the log level after it in parentheses:
LogLineParser.new('[INFO]: Operation completed').reformat
 => "Operation completed (info)"
=end
