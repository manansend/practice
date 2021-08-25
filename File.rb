require 'csv'

class File

  def reset_file
    CSV.open("myfile.csv", "w")
  end

  def write_to_file(response)
    CSV.open("myfile.csv", "a") do |csv|
      time = Time.now.to_s
      time = DateTime.parse(time).strftime("%d/%m/%Y %H:%M")
      csv << [response["message"], "["+time+"]"]
    end
  end

  def read_file
    table = CSV.parse(File.read("myfile.csv"), headers: true)
    puts
    puts table
    puts
  end

end
