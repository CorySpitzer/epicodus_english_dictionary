require('rspec')
require('word')

describe('Word') do
  describe('#name') do
    it('set and get the word') do
      word = Word.new('A')
      word.name = 'You'
      expect(word.name).to(eq('You'))
    end
  end
end
