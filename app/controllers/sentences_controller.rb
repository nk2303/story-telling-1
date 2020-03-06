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
        @sentence = Sentence.create(sentence_params)
        if @sentence.valid?
            redirect_to @sentence
        else
            flash[:message] = @sentence.errors.full_messages
            render :new
        end
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
        params.require(:sentence).permit(:sentence_text)
    end
end
