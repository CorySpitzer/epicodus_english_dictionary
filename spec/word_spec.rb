require('rspec')
require('word')
require('definition')

describe('Word') do
  describe('#name') do
    it('set and get the word') do
      word = Word.new('A')
      word.name = 'You'
      expect(word.name()).to(eq('You'))
    end
  end

  describe('#definition') do
    it('gets and sets the definition of a word') do
      cat = Word.new('cat')
      cat.definition = Definition.new('A feline animal').content()
      expect(cat.definition()).to(eq('A feline animal'))
    end
  end
end
