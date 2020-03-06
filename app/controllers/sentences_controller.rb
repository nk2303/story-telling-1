class SentencesController < ApplicationController
    def index
        @sentences = Sentence.all
    end

    def new
        @sentence = Sentence.new
        
    end

    def show
        @sentence = Sentence.find(params[:id])
    end

    def edit
        @sentence = Sentence.find(params[:id])
        # TODO: continue writing the logic for the route
    end
    
    def create
        sentence_params[:story_id] = params[:sentence][:story_id]
        sentence_params[:teller_id] = params[:sentence][:teller_id]
        sentence_params[:sentence_text] = params[:sentence][:sentence_text]
        puts sentence_params
        Sentence.create(sentence_params)
        # redirect_to new_story_path(:team_id => params[:t_id])
    end

    def update
        @sentence = Sentence.find_by_id(params[:id])
        @sentence.update(sentence_params)
        redirect_to sentences_path
    end

    def destroy
        @sentence = Sentence.find(session[:user_id])
        @sentence.destroy
        redirect_to new_sentence_path
    end 

    private

    def sentence_params
        params.require(:sentence).permit(:sentence_text, :story_id, :teller_id)
    end
end
