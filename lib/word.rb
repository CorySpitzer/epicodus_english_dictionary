class Word
  #TODO: saving definitions and a clear method
  # @@definitions = []
  @@words = []

  attr_accessor :name, :definition, :definitions

  define_method(:initialize) do |name|
    @name = name
    @definitions = []
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:save_definition) do |definition|

  end

end
