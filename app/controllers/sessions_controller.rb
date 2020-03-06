class SessionsController < ApplicationController
    def create 
        @teller = Teller.find_by(username: params[:username])

        if @teller
            session[:teller_id] = @teller.id
            login_user(@teller)
            redirect_to teller_path(@teller)
        else 
            flash[:messages] = 'Invalid username'
            redirect_to login_path
        end 
        
        def destroy
            session.delete(:teller_id)
            flash[:message] = "Log out Sucessful"
            redirect_to tellers_path
        end 

    end
end
