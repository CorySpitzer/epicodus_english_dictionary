require('rspec')
require('word')
# require('definition')

describe('Word') do
  describe('#name') do
    it('set and get the word') do
      word = Word.new('A')
      word.name = 'You'
      expect(word.name).to(eq('You'))
    end
  end

  describe('#definition') do
    it('gets and sets the definition of a word') do
      cat = Word.new('Cat')
      cat.definition = Definition.new('A feline animal').text()
      expect(cat.definition).to(eq('A feline animal'))
    end
  end

  describe('#definitions') do
    it('gets, sets, and pushes into definitions') do
      bank = Word.new('Bank')
      def1 = Definition.new('A river bank').text()
      def2 = Definition.new('A place to store money').text()
      def3 = Definition.new('To store').text()
      bank.definitions = [def1, def2]
      bank.definitions.push(def3)
      expect(bank.definitions[0]).to(eq(def1))
      expect(bank.definitions[2]).to(eq(def3))
    end
  end

  describe('#save and .all') do
    it('saves a Word instance to the list of all saved words, and
        returns a list of all saved words') do
      bank = Word.new('Bank')
      bank.save()
      crank = Word.new('Crank')
      crank.save()
      expect(Word.all).to(eq([bank, crank]))
    end
  end

  # describe('.all') do
  #   it('') do
  #     bank = Word.new('Bank')
  #
  #   end
  # end

end
