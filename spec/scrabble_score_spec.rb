require('rspec')
require('scrabble_score')

describe('Scrabbler#scrabble_score') do
  it("returns a scrabble score for a letter") do
    game = Scrabbler.new()
    expect(game.scrabble('a')).to(eq(1))
  end

  it("returns a scrabble score for a word") do
    game = Scrabbler.new()
    expect(game.scrabble('barbeque')).to(eq(21))
  end

  it("ignores non-alphabet characters and scores everything else") do
    game = Scrabbler.new()
    expect(game.scrabble('a1a#a.a a')).to(eq(5))
  end
  
end