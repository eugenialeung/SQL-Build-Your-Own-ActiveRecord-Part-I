class AttrAccessorObject
  def self.my_attr_accessor(*names)
    # ... Defines getter/setter methods if ruby didn't provide attr_accessor convenient method for us
    names.each do |name|
      define_method(name) do
        instance_variable_get("@#{name}")
      end
      define_method("#{name}=") do |value|
      instance_variable_set("@#{name}", value)
      end
    end
  end
end
