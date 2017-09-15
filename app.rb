require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer')
require('pry')


word1 = Word.new("Endemic","Native to a specific region or environment and not occurring naturally anywhere else.","http://www.cepf.net/SiteCollectionImages/other/ci_78938240%20(1).jpg")
word1.save()
word1.setId(1)
word1 = Word.new("Innervate","To stimulate or supply nervous energy.","http://wiki.teamliquid.net/commons/images/3/35/Innervate_hs.png")
word1.save()
word1.setId(2)
word1 = Word.new("Vacuous","Having or showing a lack of thought or intelligence.","https://4.bp.blogspot.com/-nLDMbTVwOJc/WLYO2WAk8wI/AAAAAAAAPyI/wyy0vKrqNPMl_BOLGsEyXUc02RUbnfVbQCLcB/s1600/Rom_Artwork.jpg")
word1.save()
word1.setId(3)
word1 = Word.new("Garrulous","Excessively talkative, especially on trivial matters.","http://www.cs.utexas.edu/~deke/chris/images/garrulous.jpg")
word1.save()
word1.setId(4)
word1 = Word.new("Tenacious","Not readily letting go of, giving up, or separated from an object that one holds, a position, or a principle.","http://e.snmc.io/lk/f/a/cc2776c6d7f5fd70cf7f484881afe14a/1052315.jpg")
word1.save()
word1.setId(5)
word1 = Word.new("Assuage","To make milder or less severe; relieve; ease; mitigate.","http://flashcardmonkey.com/wp-content/uploads/2015/11/assuage.png")
word1.save()
word1.setId(6)

get('/') do
  @list = Word.all()
  erb(:list)
end

post('/') do
  word = params['theWord']
  definition = params['theDefinition']
  picture = params['thePicture']

  word = Word.new(word,definition,picture)
  word.save()
  @list = Word.all()
  erb(:list)
end

# post('/word/:id') do
#   @word_to_display = Word.find(params[:id])
#   Word.delete(@word_to_display.id)
#   erb(:word)
# end

# get('/update/:id') do
#   @word_to_display = Word.find(params[:id])
#   erb(:update)
# end

# post('/update/:id') do
#   word = params['theWord']
#   definition = params['theDefinition']
#   picture = params['thePicture']
#
#   @word_to_display = Word.find(params[:id])
#
#   @word_to_display.update(word,definition,picture)
#   erb(:update)
# end

get('/word/:id') do
  @word_to_display = Word.find(params[:id])
  erb(:word)
end
