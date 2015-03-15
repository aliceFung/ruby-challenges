require 'sinatra'
set :bind, '0.0.0.0'

get '/list/' do
#    number=1
#    while number<10 do
#        string += numerology_msg(number)
#        number+=1
#    end
#    @message = string
    @message="testing123"
    "#{@message}"
    erb :list
end
