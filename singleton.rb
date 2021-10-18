class Singleton
  @instance = new
  private_class_method :new

  def self.instance
    @instance
  end

  def some_business_logic(message)
    p "#{message}"
  end
end

s1 = Singleton.instance
s2 = Singleton.instance
s3 = Singleton.instance

s1.some_business_logic("S1")
s2.some_business_logic("S2")
s3.some_business_logic("S3")

if s1.equal?(s2) && s1.equal?(s3)
  print 'Singleton works, all variables contain the same instances.'
else
  print 'Singleton failed, variables contain different instances.'
end
