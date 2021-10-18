# interface
class Vehicle
  # Some default implementation of the factory method.
  def factory_method
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class Vehicle1 < Vehicle
  def factory_method
    Audi.new
  end
end

class Vehicle2 < Vehicle
  def factory_method
    Honda.new
  end
end

# interface
class Car
  # return [String]
  def accelerate
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class Audi < Car
  def accelerate
    'Acceleration of Audi'
  end
end
class Honda < Car
  def accelerate
    'Acceleration of Honda'
  end
end

def main(vehicle)
  print 'inside main()'
  car = vehicle.factory_method
  car.accelerate
end

puts 'App: Launched with the Audi.'
main(Vehicle1.new)
puts "\n\n"

puts 'App: Launched with the Honda.'
main(Vehicle2.new)
