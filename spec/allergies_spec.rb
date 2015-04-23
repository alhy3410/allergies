require('rspec')
require('allergies')
require('pry')

describe('Fixnum#allergies') do
  it('takes the provided score and shows allergies related to score') do
    expect(4.allergies()).to(eq(["shellfish"]))
  end
end
