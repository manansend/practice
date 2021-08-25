class Time

  def get_time (param="%d/%m/%Y %H:%M")
    time = Time.now.to_s
    return DateTime.parse(time).strftime(param)
  end

end
