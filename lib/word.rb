class Word
  #TODO: saving definitions and a clear method
  # @@definitions = []
  @@words = []

  attr_accessor :name, :definitions

  define_method(:initialize) do |params|
    @name = params.fetch(:name)
    @definitions = []
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:add_definition) do |params|
    @definitions.push(params.fetch(:definition))
  end

end
