# get '/users' do
#   if logged_in? && current_user
#     @users = User.all #define instance variable for view
#     erb :'users/index' #show all users view (index)
#   else
#     @errors = ["You need to be logged in"]
#     erb :index
#   end
# end

# # get '/users/new' do
# #   unless logged_in? && current_user
# #     erb :'users/new' #show new users view
# #   else
# #     @errors = ["Can't register a new user while logged in"]
# #     redirect '/'
# #   end
# # end

# # post '/users' do
# #   #below works with properly formatted params in HTML form
# #   unless logged_in?
# #     @user = User.new(params[:user]) #create new user

# #     if @user.save #saves new user or returns false if unsuccessful
# #       session[:user_id] = @user.id unless session[:user_id]
# #       redirect '/'
# #       # erb :index
# #       # redirect '/users' #redirect back to users index page if successful
# #     else
# #       @errors = @user.errors.full_messages
# #       erb :'users/new' # show new users view again(potentially displaying errors)
# #     end
# #   else
# #     @errors = ["Can't create new user while logged in"]
# #     redirect '/'
# #     # erb :"users/#{current_user.id}"
# #   end
# # end

# # get '/users/:id' do
# #   #gets params from url
# #   if logged_in?
# #     @user = User.find(params[:id]) #define instance variable for view
# #     erb :'users/show' #show single user view
# #   else
# #     redirect '/'
# #   end
# # end

