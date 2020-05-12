require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end
 
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse 
  end

  get "/square/:number" do
    (params[:number].to_i ** 2).to_s

  end

  get '/say/:number/:phrase' do
    answer = ''
    params[:number].to_i.times do
      answer += params[:phrase]
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # @word1 = params[:word1]
    @finalphrase = "#{params[:word1]} " + "#{params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}."
    @finalphrase
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == "subtract"
      (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operation] == "multiply"
      (params[:number1].to_i * params[:number2].to_i).to_s
    elsif params[:operation] == "divide"
    (params[:number1].to_i / params[:number2].to_i).to_s
    end 
  end 

end