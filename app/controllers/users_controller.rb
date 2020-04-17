class UsersController < ApplicationController

  get "/users/signup" do
    redirect_if_logged_in
    erb :'/users/signup'
  end

  post "/users" do
    # create user
    @user = User.new(params)
    # save user
    if @user && @user.save
      # set session id
      session[:user_id] = @user.id
      # redirect user
      redirect "/posts"
    else
      # handling if the user doesn't save
      erb :"users/signup"
    end
  end

end