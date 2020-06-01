class UsersController < ApplicationController
   
    

    def index
        users = User.all 
        render json: users, include: [:playlists] 
    end 

     def create
       user = User.new(username: params[:username], password: params[:password])
       if user.save
       render json: { username: user.username, token: generate_token(id: user.id) }
       else 
        render json: {error: user.errors.full_messages}
       end
    end
     
    def show 
        user = User.find(params[:id])
        render json: user, include: [:playlist]
    end 

    def log_in
        
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
          render json: { username: user.username, token: generate_token(id: user.id) }
       else 
          render json: { error: "invalid credential try again"}
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
