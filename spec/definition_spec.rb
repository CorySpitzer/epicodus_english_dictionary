require('rspec')
require('definition')

describe('Definition') do
  describe('#content') do
    it('accesses content') do
      pet_def = Definition.new(:text => 'A feline animal')
      pet_def.text = 'A canine animal'
      expect(pet_def.text).to(eq('A canine animal'))
    end
  end
end
