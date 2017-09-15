get '/users' do
  # require_user

  @users = User.all #define instance variable for view
  erb :'users/index' #show all users view (index)
end

get '/users/new' do
  unless logged_in? && current_user
    erb :'users/new' #show new users view
  else
    @errors = ["Can't register a new user while logged in"]
    erb :'users/new' #redirect '/'
  end
end

post '/users' do
  redirect '/' if logged_in? # protect route if user is logged in

  @user = User.new(params[:user]) #create new user

  if @user.save #saves new user or returns false if unsuccessful
    session[:user_id] = @user.id
    redirect '/'  #redirect back to users index page if successful
  else
    @errors = @user.errors.full_messages
    erb :'users/new' # show new users view again(displaying errors)
  end
end

get '/users/:id' do
  require_user # protect routes
  #gets params from url
  @user = User.find(params[:id]) #define instance variable for view
  erb :'users/show' #show single user view
end

