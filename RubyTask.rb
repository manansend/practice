require "./Api.rb"
require "./File.rb"

def api_manager
  @api_manager || Api.new
end

def file_manager
  @file_manager || File.new(0)
end

def read_api
  response = api_manager.fetch_quote
  file_manager.write_to_file response
  puts response
  puts
end

def read_file
  file_manager.read_file
end

def reset_file
  file_manager.reset_file
end

while true
  print "Press 1 to read new Quote
  Press 2 to read old Quote from file
  Press 3 to reset file data
  Press 4 to Exit
  = "
  input = gets.chomp.to_i

  if input == 1
    read_api
  elsif input == 2
    read_file
  elsif input == 3
    reset_file
  elsif input == 4
    break
  else
    puts "Invalid Input, Please Try Again."
  end

end
