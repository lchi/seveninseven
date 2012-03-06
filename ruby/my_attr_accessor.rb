module MyUtil
  def my_accessor *args
    args.each do |val|

      define_method val.to_s do 
        instance_variable_get("@#{val.to_s}")
      end
      
      define_method "#{val.to_s}=" do |value|
        instance_variable_set("@#{val.to_s}", value)
      end

    end
  end
  
end

class MyClass 
  def self.my_accessor *args
    args.each do |val|

      define_method val.to_s do
          instance_variable_get("@#{val.to_s}")
      end

        define_method "#{val.to_s}=" do |value|
          instance_variable_set("@#{val.to_s}", value)
      end

    end
  end

  my_accessor :some_val
end

m = MyClass.new
#puts m.inspect
#puts m.methods
#m.callCool
puts m.some_val = 3
puts m.some_val
    


      
  
