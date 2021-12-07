require('rspec')
require('scrabble_score')

describe('Scrabbler#scrabble_score') do
  it("returns a scrabble score for a letter") do
    game = Scrabbler.new()
    expect(game.scrabble('a')).to(eq(1))
  end
end