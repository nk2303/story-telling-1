class AddSentenceTextToSentences < ActiveRecord::Migration[5.1]
  def change
    add_column :sentences, :sentence_text, :string
  end
end
