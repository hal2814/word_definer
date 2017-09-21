require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/wordDefiner')
require('pry')

WordDefiner.seed()

get('/') do
  @list = WordDefiner.all()
  erb(:list)
end

post('/') do
  word = params['theWord']
  definition = params['theDefinition']
  picture = params['thePicture']

  word = WordDefiner.new(word,picture)
  word.save()
  word.addMoreDef(definition)

  @list = WordDefiner.all()
  erb(:list)
end

get('/add_def/:id') do

  @word_to_display = WordDefiner.find(params[:id])
  erb(:add_def)
end

post('/add_def/') do
  definition = params['moreDef']

  @word_to_display = WordDefiner.find(params[:id])
  @word_to_display.addMoreDef(definition)
  # @word_to_display
  erb(:word)
end

get('/word/:id') do
  # definition = params['moreDef']
  @word_to_display = WordDefiner.find(params[:id])

  erb(:word)
end
