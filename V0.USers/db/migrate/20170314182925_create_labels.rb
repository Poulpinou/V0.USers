class CreateLabels < ActiveRecord::Migration[5.0]
  def change
    create_table :labels do |t|
      t.string :name
      t.string :category
      t.string :details
      t.string :status

      t.timestamps
    end

    remove_column :articles, :label

    change_table :ideas do |t|
      t.belongs_to :label
    end
    change_table :contacts do |t|
      t.belongs_to :label
    end
    change_table :articles do |t|
      t.belongs_to :label
    end
    
  end
end
