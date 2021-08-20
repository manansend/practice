require 'csv'

class File

  def resetFile
    CSV.open("myfile.csv", "w")
  end

  def writeToFile(response)
    CSV.open("myfile.csv", "a") do |csv|
      time = Time.now.to_s
      time = DateTime.parse(time).strftime("%d/%m/%Y %H:%M")
      csv << [response["quotes"][0]["text"], response["quotes"][0]["tag"], response["quotes"][0]["author"], "["+time+"]"]
    end
  end

  def readFile
    table = CSV.parse(File.read("myfile.csv"), headers: true)
    puts
    puts table
    puts
  end

end
