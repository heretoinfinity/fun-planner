get '/session-viewer' do # for debugging
  session.inspect
end

get '/login' do
  erb :'users/login'
end

post '/login' do
  user = User.find_by(email: params[:user][:email])

  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect "/"
  else
    @errors = ["User not found"]
    erb :'users/login'
  end
end

delete '/logout' do
  session.clear
  redirect '/'
end