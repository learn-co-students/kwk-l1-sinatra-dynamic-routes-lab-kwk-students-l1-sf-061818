require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name'
@name = params[:name].reverse
"#{@name}"
end 
end
