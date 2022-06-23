class MembersController < ApplicationController
  before_action :authenticate_user!

  def show
    user = get_user_from_token
    render json: {
      message: "If you see this, you're in!",
      user: user
    }
  end

  def update
    puts "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    # puts current_user
      # if 
        current_user.update(user_params)
        puts "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ"
        
      # else
      #   error_formatter(current_user)
      # end
  end



  private

  def user_params
    params.permit(:child_name, :child_image)
  end


  def get_user_from_token
    jwt_payload = JWT.decode(request.headers['Authorization'].split(' ')[1],
                            #  Rails.application.credentials.devise[:jwt_secret_key]).first
                            ENV['DEVISE_JWT_SECRET_KEY']).first

    user_id = jwt_payload['sub']
    User.find(user_id.to_s)
  end
end