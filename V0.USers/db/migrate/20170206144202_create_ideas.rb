class CreateIdeas < ActiveRecord::Migration[5.0]
  def change
    create_table :ideas do |t|
      t.column :title, :string
      t.column :description, :string
      t.text :content
      t.belongs_to :user, index: true
      t.column :votes, :integer
      t.timestamps
    end
  end
end
