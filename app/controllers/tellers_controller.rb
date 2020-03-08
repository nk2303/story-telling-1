class TellersController < ApplicationController
    # skip_before_action :authorized, only[:new, :create]

    def index
        @tellers = Teller.all
    end

    def new
        @teller = Teller.new
    end

    def show
        @teller = Teller.find(params[:id])
        @sentence_arr = @teller.sentences.map{|sentence| sentence.sentence_start + sentence.sentence_text}
        #find story_id belongs to this teller
        story_id_array = @teller.sentences.map{|sentence| sentence.story_id}.uniq
    end

    def edit
        @teller = Teller.find(params[:id])
        # TODO: continue writing the logic for the route
    end
    
    def create
        @teller = Teller.create(teller_params)
        if @teller.valid?
            redirect_to @teller
        else
            flash[:message] = @teller.errors.full_messages
            render :new
        end
    end

    def update
        @teller = Teller.find_by_id(params[:id])
        @teller.update(teller_params)
        redirect_to tellers_path
    end

    def destroy
        @teller = Teller.find(session[:user_id])
        @teller.destroy
        redirect_to new_teller_path
    end 

    private

    def teller_params
        params.require(:teller).permit(:username, :password, :game_id)
    end

end
