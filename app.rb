require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do 
    "Hello World"
end 

get '/secret' do
    "There is a secret garden"
end

get '/cat' do
    @names = ["Amigo", "Misty", "Almond"].sample
    erb(:index)
end

