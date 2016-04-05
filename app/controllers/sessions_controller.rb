class SessionsController < Clearance::SessionsController
  skip_before_action :require_login, only: :handle_omniauth
  
  def create_from_omniauth
        auth_hash = request.env["omniauth.auth"]

        authentication = Authentication.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"]) || Authentication.create_with_omniauth(auth_hash)
     
        if authentication.user
          user = authentication.user 
          authentication.update_token(auth_hash)
          @next = root_url
          @notice = "Signed in!"
        else
          user = User.create_with_auth_and_hash(authentication,auth_hash)
          @next = root_url 
          @notice = "User created - confirm or edit details..."
        end
        sign_in(user)
        redirect_to @next, :notice => @notice
      end
      
  def handle_omniauth
    @user = User.from_omniauth(request.env['omniauth.auth'])

    sign_in(@user)

    redirect_to url_for_signed_in_users
  end





end



