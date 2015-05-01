class Definition
  #TODO: Add a word type, like 'verb'

  attr_accessor :text

  define_method(:initialize) do |params|
    @text = params.fetch(:text)
  end
end
