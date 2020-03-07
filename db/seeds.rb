# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Teller.delete_all
Sentence.delete_all
Story.delete_all
Team.delete_all

t1 = Teller.create(username: "Someteller", password_digest: "123")
t2 = Teller.create(username: "Someone", password_digest: "123")
t3 = Teller.create(username: "Somebody", password_digest: "123")

string_of_id_1 = [ t1.id, t2.id ].join
string_of_id_2 = [ t1.id, t3.id ].join
string_of_id_3 = [ t1.id, t2.id, t3.id ].join

team1 = Team.create(id_list: string_of_id_1)
team2 = Team.create(id_list: string_of_id_2)
team3 = Team.create(id_list: string_of_id_3)

st1 = Story.create
st2 = Story.create
st3 = Story.create


s_1a = Sentence.create(story_id: st1.id, teller_id: t1.id , sentence_start: "Once upon a time, ", sentence_text: "there was a volcano living all alone in the middle of the sea.")
s_2a = Sentence.create(story_id: st1.id, teller_id: t2.id , sentence_start: "Every day, ", sentence_text: "he sang out loud this song of hope: I wish that the earth, sea, and the sky up above will send me someone to lava.")
s_3a = Sentence.create(story_id: st1.id, teller_id: t1.id , sentence_start: "One day, ", sentence_text: "he was on the brink of extinction." )
s_4a = Sentence.create(story_id: st1.id, teller_id: t2.id , sentence_start: "Because of that, ", sentence_text: "another volcano below the sea was listening to his song and want to meet him above the sea." )
s_5a = Sentence.create(story_id: st1.id, teller_id: t1.id , sentence_start: "And because of that, ", sentence_text: "she rises up eventually looking for him." )
s_6a = Sentence.create(story_id: st1.id, teller_id: t2.id , sentence_start: "Until finally, ", sentence_text: "they meet above the sea.")
s_7a = Sentence.create(story_id: st1.id, teller_id: t1.id , sentence_start: "In conclusion, ", sentence_text: "the two volcanos are together now and their lava grew and grew with Aloha as their new home." )

s_1b = Sentence.create(story_id: st2.id, teller_id: t1.id , sentence_start: "Once upon a time, ", sentence_text: "there was a Dinasour class at Flatiron school.")
s_2b = Sentence.create(story_id: st2.id, teller_id: t3.id , sentence_start: "Every day, ", sentence_text: "every Dinasour student works hard.")
s_3b = Sentence.create(story_id: st2.id, teller_id: t1.id , sentence_start: "One day, ", sentence_text: "the dangerous Corona virus came to Flatiron." )
s_4b = Sentence.create(story_id: st2.id, teller_id: t3.id , sentence_start: "Because of that, ", sentence_text: "everyone have a day off." )
s_5b = Sentence.create(story_id: st2.id, teller_id: t1.id , sentence_start: "And because of that, ", sentence_text: "nobody studies anymore." )
s_6b = Sentence.create(story_id: st2.id, teller_id: t3.id , sentence_start: "Until finally, ", sentence_text: "the Corona virus is no longer around.")
s_7b = Sentence.create(story_id: st2.id, teller_id: t1.id , sentence_start: "In conclusion, ", sentence_text: "Dinasour students are lazy. I'm just kidding." )

s_1c = Sentence.create(story_id: st3.id, teller_id: t1.id , sentence_start: "Once upon a time, ", sentence_text: "there was a candy bar.")
s_2c = Sentence.create(story_id: st3.id, teller_id: t2.id , sentence_start: "Every day, ", sentence_text: "the candy bar is scared to be eaten.")
s_3c = Sentence.create(story_id: st3.id, teller_id: t3.id , sentence_start: "One day, ", sentence_text: "a person looked at the candy bar." )
s_4c = Sentence.create(story_id: st3.id, teller_id: t1.id , sentence_start: "Because of that, ", sentence_text: "the candy bar look back." )
s_5c = Sentence.create(story_id: st3.id, teller_id: t2.id , sentence_start: "And because of that, ", sentence_text: "the person eats the candy bar." )
s_6c = Sentence.create(story_id: st3.id, teller_id: t3.id , sentence_start: "Until finally, ", sentence_text: "the candy bar is no longer scared(!?)")
s_7c = Sentence.create(story_id: st3.id, teller_id: t1.id , sentence_start: "In conclusion, ", sentence_text: "don't be like a candy bar." )