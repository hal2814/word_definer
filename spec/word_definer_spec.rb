require('pry')
require('rspec')
require('word_definer')

describe("Word") do
  before() do
    Word.clear()
  end

  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves an word to the list of items") do

    end
  end

  describe(".clear") do
    it("clears all word from the word list") do
      word = Word.new()
      word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("increments an id by 1 each time a new word is added") do
      word = Word.new()
      word.save()
      word2 = Wordword.new()
      word2.save()
      expect(word.id()).to(eq(1))
      expect(word2.id()).to(eq(2))
    end
  end
  describe(".find") do
    it("finds an word based on its id") do
      word = Word.new()
      word.save()
      word2 = Word.new()
      word2.save()
      expect(Word.find(1)).to(eq(word))
      expect(Word.find(2)).to(eq(word2))
    end
  end
end
