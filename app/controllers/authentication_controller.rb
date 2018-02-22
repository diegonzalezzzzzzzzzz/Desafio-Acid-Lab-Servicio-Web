class AuthenticationController < ApplicationController

  protect_from_forgery with: :null_session


  def initialize

    @options = {

      headers: {
        "Content-Type" => "application/json"
      }

    }

  end

  def new

    render 'new'
    
  end

  def login

    ap "Servicio Web" 

    #respond_to do |format|

      #data_json = request.raw_post
      #data_json_parse = JSON.parse(data_json)
      #@user = User.new(data_json_parse)

      email = params[:email]
      image = params[:image]

      @user = User.new(email:email,image:image)

      @urlstring_to_post = 'http://localhost:3001/rest/verify_user/' + @user[:email]
      ap @urlstring_to_post
    
      options = @options.merge({ body: { :image => @user[:image] }.to_json })
   
      @result = HTTParty.post(@urlstring_to_post.to_str,options)

      ap "Result Response"
      ap @result.parsed_response

      render :json => @result.parsed_response

      #   format.json{ render :json => @result.parsed_response }

    #end

  end

  def invalid

        render json: { MESSAGE:"ERROR, PAGE INVALID!" }

  end

end
