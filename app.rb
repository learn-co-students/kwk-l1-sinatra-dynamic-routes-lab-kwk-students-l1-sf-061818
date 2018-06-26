# require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
  @name = params[:name]
  "#{@name.reverse}"
  end


  get '/square/:number' do
  @num = params[:number].to_i
  @square = @num * @num
  "#{@square}"
  end

  get '/say/:phrase/:number' do
  @phrase = params[:phrase].to_i
  @number = params[:number]
  @number*@phrase
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  @word1+ " " +@word2+ " " +@word3+ " " +@word4+ " " +@word5+ "."
end
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation].to_s
    @number1 = params[:number1].to_f
    @number2 = params[:number2].to_f
    if @operation == "add"
      "#{@number1 + @number2}"
    elsif @operation == "subtract"
      "#{@number1 - @number2}"
    elsif @operation == "multiply"
      "#{@number1 * @number2}"
    else @operation == "divide"
      "#{@number1 / @number2}"
    end
  end
 end

