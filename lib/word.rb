class Word
  #TODO: saving definitions and a clear method
  # @@definitions = []

  attr_accessor :name, :definition, :definitions

  define_method(:initialize) do |name|
    @name = name
    @definitions = []
  end

  define_method(:save_definition) do |definition|

  end

end
