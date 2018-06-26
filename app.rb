require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @reverse = params[:name]
    "#{@reverse.reverse}"
  end 
  
  get '/square/:number' do 
    @number = params[:number].to_f 
    (@number * @number).to_s
  end 
  
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s 
    @phrase*@number
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word1+" "+@word2+" "+@word3+" "+@word4+ " " + @word5+ "."
  end 
  
  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1].to_f
    @number2 = params[:number2].to_f
    if @operation == "add"
      add = @number2 + @number1
      "#{add}"
    elsif @operation == "subtract"
      subtract = @number2 - @number1
      "#{subtract}"
    elsif @operation == "multiply"
      multiply = @number1 * @number2
      "#{multiply}"
    elsif @operation == "divide"
      divide = @number1/@number2
      "#{divide}"
    else 
      puts "nil"
    end 
  end 

end
