require_relative 'config/environment'

class App < Sinatra::Base
#
#  @product= @number*@number
#    "#{@product}"
#end
#end

get '/say/:number/:phrase' do
  @number = params[:number].to_i
  @phrase = params[:phrase]
  
  
  @product = @number * @phrase
end