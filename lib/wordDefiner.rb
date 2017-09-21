class WordDefiner
  @@list = []
  attr_reader :id
  attr_accessor :word,:definitions,:picture
  def initialize(word,picture)
    @word = word
    @definitions = []
    @picture = picture
    @id = @@list.length + 1
  end

  def setId(id)
    @id = id.to_i()
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end

  def addMoreDef(define)
    @definitions.push(define)
  end

  def defAll()
    @definitions
  end

  def self.find(id)
    word_id = id.to_i()
    @@list.each do |word|
      if word.id == word_id
        return word
      end
    end
  end

  def update(word,definitions,picture)
    self.word = word
    self.definitions = definitions
    self.picture = picture
  end


 def self.delete(del_id)
    @@list.map do |word|
      if word.id == del_id
      @@list.delete(word)
      end
    end
  end

  def self.seed()
    word1 = WordDefiner.new("Fastidious","https://iheartvocabulary.files.wordpress.com/2014/03/fastidious.jpg")
    word1.addMoreDef("Very attentive to and concerned about accuracy and detail.")
    word1.save()
    word1.setId(1)
    word1 = WordDefiner.new("Temerity","https://personaltao.com/wp-content/uploads/2008/03/Ego.jpg")
    word1.addMoreDef("Excessive confidence or boldness; audacity.")
    word1.save()
    word1.setId(2)
    word1 = WordDefiner.new("Vacuous","https://4.bp.blogspot.com/-nLDMbTVwOJc/WLYO2WAk8wI/AAAAAAAAPyI/wyy0vKrqNPMl_BOLGsEyXUc02RUbnfVbQCLcB/s1600/Rom_Artwork.jpg")
    word1.addMoreDef("Having or showing a lack of thought or intelligence.")
    word1.save()
    word1.setId(3)
    word1 = WordDefiner.new("Garrulous","http://www.cs.utexas.edu/~deke/chris/images/garrulous.jpg")
    word1.addMoreDef("Excessively talkative, especially on trivial matters.")
    word1.save()
    word1.setId(4)
    word1 = WordDefiner.new("Tenacious","http://e.snmc.io/lk/f/a/cc2776c6d7f5fd70cf7f484881afe14a/1052315.jpg")
    word1.addMoreDef("Not readily letting go of, giving up, or separated from an object that one holds, a position, or a principle.")
    word1.save()
    word1.setId(5)
    word1 = WordDefiner.new("Assuage","http://flashcardmonkey.com/wp-content/uploads/2015/11/assuage.png")
    word1.addMoreDef("To make milder or less severe; relieve; ease; mitigate.")
    word1.save()
    word1.setId(6)
  end
end
