class Scrabbler 
  def initialize()
    @scores = { "a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1, "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8, "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1, "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1, "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4, "z" => 10 }
  end

  def scrabble(word)
    scored = word.split("").delete_if{|x| x.match(/[^a-z]/i)}
    total = 0
    scored.each do |letter|
      total += @scores.fetch(letter.downcase)
    end
    total
  end

  # def scrabble(selection)
  #   worded = selection.split("")
  #   scored = []
  #   worded.each do |character|
  #     if (character.downcase) != (character.upcase)
  #       scored.push(character)
  #     end
  #   end
  #   total = 0
  #   scored.each do |letter|
  #     total += @scores.fetch(letter.downcase)
  #   end
  #   total
  # end
end

  book = Scrabbler.new()
  file = File.open("two_cities.txt")
  file_data = file.read
  puts book.scrabble(file_data) 
  file.close