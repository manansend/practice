# interface
class Furniture
  def create_sofa
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def create_chair
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class Victorian < Furniture
  def create_sofa
    Sofa_Victorian.new
  end

  def create_chair
    Chair_Victorian.new
  end
end

class Modern < Furniture
  def create_sofa
    Sofa_Modern.new
  end

  def create_chair
    Chair_Modern.new
  end
end

# interface
class Chair
  # @return [String]
  def sit
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class Chair_Victorian < Chair
  def sit
    'Chair_Victorian Sit()'
  end
end
class Chair_Modern < Chair
  def sit
    'Chair_Modern Sit()'
  end
end

# interface
class Sofa
  # @return [String]
  def relax
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  # @return [String]
  def place_along(_collaborator)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class Sofa_Victorian < Sofa
  def relax
    'Sofa_Victorian relax()'
  end

  def place_along(collaborator)
    result = collaborator.sit
    "Sofa_Victorian places along (#{result})"
  end
end

class Sofa_Modern < Sofa
  def relax
    'Sofa_Modern relax()'
  end

  def place_along(collaborator)
    result = collaborator.sit
    "Sofa_Modern places along (#{result})"
  end
end

def main(factory)
  sofa = factory.create_sofa
  chair = factory.create_chair

  puts chair.sit.to_s
  puts sofa.relax.to_s
  puts sofa.place_along(chair).to_s
end

# The client code can work with any concrete factory class.
puts 'Client: Testing client code with the Victorian type:'
main(Victorian.new)

puts "\n"

puts 'Client: Testing the same client code with the Modern type:'
main(Modern.new)
