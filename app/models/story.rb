class Story < ApplicationRecord
    has_many :sentences
    has_many :tellers, through: :sentences

    def sentences_array(sto_id)
        all_s = Sentence.all.select {|sentence| sentence.story_id == sto_id}
        s1_obj = all_s.find { |s| s.sentence_start == "Once upon a time, "}
        s1 = s1_obj.sentence_start + s1_obj.sentence_text
        s2_obj = all_s.find { |s| s.sentence_start == "Every day, "}
        s2 = s2_obj.sentence_start + s2_obj.sentence_text
        s3_obj = all_s.find { |s| s.sentence_start == "One day, "}
        s3 = s3_obj.sentence_start + s3_obj.sentence_text
        s4_obj = all_s.find { |s| s.sentence_start == "Because of that, "}
        s4 = s4_obj.sentence_start + s4_obj.sentence_text
        s5_obj = all_s.find { |s| s.sentence_start == "And because of that, "}
        s5 = s5_obj.sentence_start + s5_obj.sentence_text
        s6_obj = all_s.find { |s| s.sentence_start == "Until finally, "}
        s6 = s6_obj.sentence_start + s6_obj.sentence_text
        s7_obj = all_s.find { |s| s.sentence_start == "In conclusion, "}
        s7 = s7_obj.sentence_start + s7_obj.sentence_text
        story = [s1,s2,s3,s4,s5,s6,s7]
    end
end
