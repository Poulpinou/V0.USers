class AddColorsToLabels < ActiveRecord::Migration[5.0]
  def change
    add_column :labels, :color, :text
    remove_column :contacts, :aim
  end
end
