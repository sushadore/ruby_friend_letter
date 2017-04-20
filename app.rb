require('sinatra')
require('sinatra/reloader')

get('/') do
  @friend = "Zach"
  erb(:letter)
end

get('/photo') do
  erb(:photo)
end

get('/greeting_form') do
  erb(:form)
end

get('/alaska') do
  @sender = params.fetch('sender')
  @recipient = params.fetch('recipient')
  erb(:alaska)
end
