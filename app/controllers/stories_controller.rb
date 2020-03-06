class StoriesController < ApplicationController

    def index
        @stories = Story.all
    end

    def new
        @team = Team.find(params[:team_id])
        teller_id_list = @team.id_list.split(",").map { |s| s.to_i } #[1,2,3]
        teller_names = []
        teller_id_list.each do |id|
            teller_names << Teller.find_by_id(id).username
        end
        @random_names = teller_names.shuffle
        @story = Story.new
        
        @s1 = Sentence.new(start:"Once upon a time, ", sentence_text: "")
        @s2 = Sentence.new(start:"Every day, ", sentence_text: "")
        @s3 = Sentence.new(start:"One day, ", sentence_text: "")
        @s4 = Sentence.new(start:"Because of that, ", sentence_text: "")
        @s5 = Sentence.new(start:"Because of that,  ", sentence_text: "")
        @s6 = Sentence.new(start:"Because of that, ", sentence_text: "")
        @s7 = Sentence.new(start:"In conclusion, ", sentence_text: "")
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
        params.require(:story).permit(list_of_player)
    end

end
