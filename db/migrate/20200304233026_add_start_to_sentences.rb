class AddStartToSentences < ActiveRecord::Migration[5.1]
  def change
    add_column :sentences, :start, :string
  end
end
