class Definition
  attr_accessor :content

  define_method(:initialize) do |content|
    @content = content
  end
end
