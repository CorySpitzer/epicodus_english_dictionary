require('rspec')
require('definition')

describe('Definition') do
  describe('#content') do
    it('accesses content') do
      pet_def = Definition.new('A feline animal')
      pet_def.content = 'A canine animal'
      expect(pet_def.content).to(eq('A canine animal'))
    end
  end
end
