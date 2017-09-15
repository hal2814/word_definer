require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer')
require('pry')

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

get('/update/:id') do
  @word_to_display = Word.find(params[:id])
  erb(:update)
end

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
