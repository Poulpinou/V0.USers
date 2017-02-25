class AddSeal < ActiveRecord::Migration[5.0]
  def change
    add_column :ideas, :seal, :string
    add_column :ideas, :seal_text, :string
    add_column :ideas, :label, :string
  end
end
