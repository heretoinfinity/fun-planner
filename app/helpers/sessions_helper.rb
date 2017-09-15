helpers do
  def logged_in?
    !!current_user # coerce it into a boolean- when nil it is false
    # session.include?(:user_id) # this would not be reusing code ````
  end

  def require_user
    redirect '/' unless logged_in?
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end