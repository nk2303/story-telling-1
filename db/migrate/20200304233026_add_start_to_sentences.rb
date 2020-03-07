class AddStartToSentences < ActiveRecord::Migration[5.1]
  def change
    add_column :sentences, :sentence_start, :string
  end
end
