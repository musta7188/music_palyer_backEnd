class UsersController < ApplicationController
   
    

    def index
        users = User.all 
        render json: users 
    end 

     def create
       user = User.create(username: params[:username], password: params[:password])
       render json: user
    end
     
    def log_in
        
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
          render json: { username: user.username, token: generate_token(id: user.id) }
        else
          render json: { error: "Username or Password is invalid "}
        end
      end

     

    
      def validate
        if get_user
          render json: { username: get_user.username, token: generate_token(id: get_user.id)}
        else
          render json: { error: "You are not authorized" }
        end
      end
      
      
      
      
      
      
      
    




end
