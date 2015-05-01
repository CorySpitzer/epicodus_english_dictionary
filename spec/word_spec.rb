require('rspec')
require('word')
# require('definition')

describe('Word') do
  before() do
    Word.clear()
  end

  describe('#name') do
    it('set and get the word') do
      word = Word.new(:name => 'A')
      word.name = 'You'
      expect(word.name).to(eq('You'))
    end
  end

  describe('#definitions') do
    it('gets, sets, and pushes into definitions') do
      bank = Word.new(:name => 'Bank')
      def1 = Definition.new(:text => 'A river bank')
      def2 = Definition.new(:text => 'A place to store money')
      def3 = Definition.new(:text => 'To store')
      bank.definitions = [def1, def2]
      bank.definitions.push(def3)
      expect(bank.definitions[0]).to(eq(def1))
      expect(bank.definitions[2]).to(eq(def3))
    end
  end

  describe('#save and .all') do
    it('saves a Word instance to the list of all saved words, and
        returns a list of all saved words') do
      bank = Word.new(:name => 'Bank')
      bank.save()
      crank = Word.new(:name => 'Crank')
      crank.save()
      expect(Word.all).to(eq([bank, crank]))
    end
  end

  describe('#add_definition') do
    it('adds a definition to a word') do
      bank = Word.new(:name => 'Bank')
      bank.add_definition(:definition => 'To store')
      expect(bank.definitions[0]).to(eq('To store'))
    end
  end
end
