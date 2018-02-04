class T
 def method1
   rand 1..100
 end
end
class Q < T
  attr_accessor :random
  def initialize
    @random = self.method1
  end
end
