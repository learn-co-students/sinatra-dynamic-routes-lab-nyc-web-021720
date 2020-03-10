require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    # renders name backwards
    @name = params[:name] #string
    "#{@name.reverse}"
  end

  get '/square/:number' do 
    # accepts a number and returns the square of that number
    # return should be a string
    @number = params[:number].to_i
    @number_squared = @number**2
    "#{@number_squared.to_s}"
  end

  get '/say/:number/:phrase' do 
    # returns that phrase in a single string the number of times given
    @number = params[:number].to_i
    @phrase_number_of_times = params[:phrase] * @number
    "#{@phrase_number_of_times}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # that accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do 
    # accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided, returning a String
    @operation = params[:operation] 
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when 'add'
      "#{(@number1 + @number2).to_s}"
    when 'subtract'
      "#{(@number1 - @number2).to_s}"
    when 'multiply'
      "#{(@number1 * @number2).to_s}"
    when 'divide'
      "#{(@number1 / @number2).to_s}"
    end
    
  end

end