class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.belongs_to :game
      t.string :author
      t.string :label
      t.text :content
      t.timestamps
    end
  end
end
