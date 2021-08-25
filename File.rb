require "csv"
require "./Time.rb"

class File

  def time_manager
    @time_manager || Time.new
  end

  def reset_file
    CSV.open("myfile.csv", "w")
  end

  def write_to_file(response)
    CSV.open("myfile.csv", "a") do |csv|
      csv << [response["message"], "["+time_manager.get_time()+"]"]
    end
  end

  def read_file
    table = CSV.parse(File.read("myfile.csv"), headers: true)
    puts "\n"+table.to_s+"\n"
  end

end
