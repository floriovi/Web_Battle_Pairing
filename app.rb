require 'sinatra'

get '/' do
  "Hello World!"
end

get '/secret' do
  "This is the secret page, test"
end

get '/another' do
  "Another route"
end

get '/random-cat' do
  @random_names = ["Vince","Graeme","Alistair"].sample
  erb(:cat)
end

get '/named-cat' do
  p params
  @random_names = params[:name]
  erb(:cat)
end