class Facade
  def initialize(integration1, integration2)
    @integration1 = integration1 || Salesforce.new
    @integration2 = integration2 || Mailer.new
  end

  # list of operations in specific order
  def operation
    results = []
    results.append('Facade initializes subsystems:')
    results.append(@integration1.render)
    results.append(@integration1.fetch)
    results.append('Facade orders subsystems to perform the action:')
    results.append(@integration2.send_mail)
    results.append(@integration2.receive_mail)
    results.append(@integration1.output)
    results.join("\n")
  end
end

class Salesforce
  # @return [String]
  def render
    'Salesforce: Render!'
  end

  # @return [String]
  def fetch
    'Salesforce: Fetch!'
  end

  # ...

  # @return [String]
  def output
    'Salesforce: Output!'
  end
end

class Mailer
  # @return [String]
  def send_mail
    'Mailer: send mail'
  end

  # ...

  # @return [String]
  def receive_mail
    'Mailer: receive mail'
  end
end

def main(facade)
  print facade.operation
end

facade = Facade.new(Salesforce.new, Mailer.new)
main(facade)
