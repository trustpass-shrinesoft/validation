class ManageUserController < ApplicationController
    def index
    end
    
    def new
        @info=User.new
    end
    
    def create
        @info = User.new(user_params)
        @info.save 
        if @info.save
            render 'index' 
        else
            render 'new'
        end 
    end
    
    private
    def user_params  
    params.require(:user).permit(:firstname,:middlename,:lastname,:birthdate,:city,:state,:country,:address,:gender,:companyname,:position,:email,:phoneno,:alternatephoneno,:username,:password,:password_confirmation)
    end
end
