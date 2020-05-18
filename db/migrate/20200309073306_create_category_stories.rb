class CreateCategoryStories < ActiveRecord::Migration[5.1]
  def change
    create_table :category_stories do |t|

      t.timestamps
    end
  end
end
