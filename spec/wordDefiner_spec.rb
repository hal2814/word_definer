require('pry')
require('rspec')
require('wordDefiner')

describe("WordDefiner") do
  before() do
    WordDefiner.clear()
  end

  describe(".all") do
    it("is empty at first") do
      expect(WordDefiner.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves a word to the list of words") do
      word = WordDefiner.new("Endemic","http://www.cepf.net/SiteCollectionImages/other/ci_78938240%20(1).jpg")
      word.addMoreDef("Native to a specific region or environment and not occurring naturally anywhere else.")
      word.save()
      expect(WordDefiner.all()).to(eq([word]))
    end
  end

  describe(".clear") do
    it("clears all word from the word list") do
      word = WordDefiner.new("Endemic","http://www.cepf.net/SiteCollectionImages/other/ci_78938240%20(1).jpg")
      word.addMoreDef("Native to a specific region or environment and not occurring naturally anywhere else.")
      word.save()
      WordDefiner.clear()
      expect(WordDefiner.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("increments an id by 1 each time a new word is added") do
      word = WordDefiner.new("Endemic","http://www.cepf.net/SiteCollectionImages/other/ci_78938240%20(1).jpg")
      word.addMoreDef("Native to a specific region or environment and not occurring naturally anywhere else.")
      word.save()
      word2 = WordDefiner.new("Innervate","http://wiki.teamliquid.net/commons/images/3/35/Innervate_hs.png")
      word.addMoreDef("To stimulate or supply nervous energy.")
      word2.save()
      expect(word.id()).to(eq(1))
      expect(word2.id()).to(eq(2))
    end
  end
  describe(".find") do
    it("finds an word based on its id") do
      word = WordDefiner.new("Endemic","http://www.cepf.net/SiteCollectionImages/other/ci_78938240%20(1).jpg")
      word.addMoreDef("Native to a specific region or environment and not occurring naturally anywhere else.")
      word.save()
      word2 = WordDefiner.new("Innervate","http://wiki.teamliquid.net/commons/images/3/35/Innervate_hs.png")
      word.addMoreDef("To stimulate or supply nervous energy.")
      word2.save()
      expect(WordDefiner.find(1)).to(eq(word))
      expect(WordDefiner.find(2)).to(eq(word2))
    end
  end

  describe("addMoreDef") do
    it("adds another definition to a word") do
      word = WordDefiner.new("Endemic","http://www.cepf.net/SiteCollectionImages/other/ci_78938240%20(1).jpg")
      word.addMoreDef("Native to a specific region or environment and not occurring naturally anywhere else.")
      word.addMoreDef("regularly found among particular people or in a certain area.")
      word.addMoreDef("an endemic plant or animal.")
      word.save()
      expect(word.definitions()).to(eq(["Native to a specific region or environment and not occurring naturally anywhere else.","regularly found among particular people or in a certain area.","an endemic plant or animal."]))
    end
  end
end
