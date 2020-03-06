class CreateSentences < ActiveRecord::Migration[5.1]
  def change
    create_table :sentences do |t|
      t.integer :story_id
      t.integer :teller_id
      t.timestamps
    end
  end
end
