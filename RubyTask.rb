require "./Api.rb"
require "./File.rb"

def readAPi
  $api = Api.new
  response = $api.get
  $file = File.new 0
  $file.writeToFile response
  puts response
  puts
end

def readFile
  $file = File.new 0
  $file.readFile
end

def resetFile
  $file = File.new 0
  $file.resetFile
end

while true
  print "Press 1 to read new Quote
  Press 2 to read old Quote from file
  Press 3 to reset file data
  Press 4 to Exit
  = "
  input = gets.chomp.to_i

  if input == 1
    readAPi
  elsif input == 2
    readFile
  elsif input == 3
    resetFile
  elsif input == 4
    break
  else
    puts "Invalid Input, Please Try Again."
  end

end
