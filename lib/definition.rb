class Definition
  #TODO: Add a word type, like 'verb'

  attr_accessor :text

  define_method(:initialize) do |text|
    @text = text
  end
end
