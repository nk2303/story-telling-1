class GamesController < ApplicationController

    def index
        @games = Game.all
    end

    def new
        @game = Game.new
    end

    def show
        @game = Game.find(params[:id])
    end

    def edit
        @game = Game.find(params[:id])
    end

    def create 
        @game = Game.create 
        # params[:teller_ids] => [id, id, id]
        teller.game_id = @game.id #@game.tellers = [id,id,id]
        #create story
        #once story created, passed story id into these sentences
        #sentences are holding foreign keys, story _id and teller_id
        #pass in the story, have to figure out what players are coming in.
        s1 = Sentence.create(start:"Once upon a time, ", sentence_text: "")
        s2 = Sentence.create(start:"Every day, ", sentence_text: "")
        s3 = Sentence.create(start:"One day, ", sentence_text: "")
        s4 = Sentence.create(start:"Because of that, ", sentence_text: "")
        s5 = Sentence.create(start:"Because of that,  ", sentence_text: "")
        s6 = Sentence.create(start:"Because of that, ", sentence_text: "")
        s7 = Sentence.create(start:"In conclusion, ", sentence_text: "")
        render new_story_path
        #create a story
        #seven sentences
        #game is going to end up being where my story are
        #using game as where the story being hosted. the story will be join table between game and senteces
    end

    def begin
        @game = Game.new
    end
    
    def choose_players
        @tellers = Teller.all
    end

    def choose_hashtags
    end

    def create_story
    end

end
