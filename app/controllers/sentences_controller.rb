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
    end
    
    def create
        Sentence.create(sentence_params)
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
        params.require(:sentence).permit(:sentence_text, :story_id, :teller_id, :sentence_start)
    end
end
