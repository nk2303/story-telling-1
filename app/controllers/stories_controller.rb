class StoriesController < ApplicationController

    def index
        @stories = Story.all
    end

    def new
        story_id = params[:story_id]

        if story_id
        # get all the sentences from teh story.
        # use those sentences to fill the form. 

        else
            @team_id = params[:team_id]
            @team = Team.find(params[:team_id])
            teller_id_list = @team.id_list.split(",").map { |s| s.to_i }
            random_ids = teller_id_list.shuffle
            @teller = []
            random_ids.each do |id|
                @teller << Teller.find_by_id(id)
            end
            if @teller.length == 1
                6.times do |t|
                @teller << @teller[0]
                end
            elsif @teller.length == 2
                @teller << @teller[0]
                @teller << @teller[1]
                @teller << @teller[0]
                @teller << @teller[1]
                @teller << @teller[0]
            elsif @teller.length == 3
                @teller << @teller[0]
                @teller << @teller[1]
                @teller << @teller[2]
                @teller << @teller[0]
            elsif @teller.length == 4
                @teller << @teller[0]
                @teller << @teller[1]
                @teller << @teller[2]
            elsif @teller.length == 5
                @teller << @teller[0]
                @teller << @teller[1]
            elsif @teller.length == 6
                @teller << @teller[0]
            end
        end
        @story = Story.create
        @s1 = Sentence.new(start:"Once upon a time, ", sentence_text: , story_id: @story.id, teller_id: @teller[0].id)
        byebug
        @s2 = Sentence.new(start:"Every day, ", sentence_text: , story_id: @story.id, teller_id: @teller[1].id)
        byebug
        @s3 = Sentence.new(start:"One day, ", sentence_text: , story_id: @story.id, teller_id: @teller[2].id)
        @s4 = Sentence.new(start:"Because of that, ", sentence_text: , story_id: @story.id, teller_id: @teller[3].id)
        @s5 = Sentence.new(start:"Because of that,  ", sentence_text: , story_id: @story.id, teller_id: @teller[4].id)
        @s6 = Sentence.new(start:"Until finally, ", sentence_text: , story_id: @story.id, teller_id: @teller[5].id)
        @s7 = Sentence.new(start:"In conclusion, ", sentence_text: , story_id: @story.id, teller_id: @teller[6].id)
    
    end

    def show
        @story = Story.find(params[:id])
    end

    def edit
        @story = Story.find(params[:id])
        # TODO: continue writing the logic for the route
    end

    def create
        @story = Story.create(story_params)
        if @story.valid?
            redirect_to @story
        else
            flash[:message] = @story.errors.full_messages
            render :new
        end
    end

    private

    def story_params
        params.require(:story).permit(list_of_player, :story_id)
    end

end
