class Word
  @@list = []
  attr_reader :id
  attr_accessor :word,:definition
  def initialize(word,definition)
    @word = word
    @definition = definition
    @id = @@list.length + 1
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

  def self.find(id)
    word_id = id.to_i()
    @@list.each do |word|
      if word.id == word_id
        return word
      end
    end
  end

  def update(word,definition)
    self.word = word
    self.definition = definition
  end


 def self.delete(del_id)
    @@list.map do |word|
      if word.id == del_id
      @@list.delete(word)
      end
    end
  end
end
