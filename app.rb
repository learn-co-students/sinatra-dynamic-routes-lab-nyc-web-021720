require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    @name = params[:name].reverse
    @name 
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do 
    @phrase = params[:phrase] * params[:number].to_i 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operator/:number1/:number2' do 
    @num1 = params[:number1].to_i 
    @num2 = params[:number2].to_i
    @add = @num1 + @num2
    @sub = @num1 - @num2
    @mul = @num1 * @num2
    @div = @num1 / @num2
    
   
    "#{@sub}" + "#{@add}" + "#{@mul}" + "#{@div}"
  end
end