class Word
  attr_accessor :name

  define_method(:initialize) do |name|
    @name = name
  end

end
