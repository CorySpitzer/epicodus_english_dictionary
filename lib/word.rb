class Word
  attr_accessor :name, :definition

  define_method(:initialize) do |name|
    @name = name
    @definition = nil
  end

end
