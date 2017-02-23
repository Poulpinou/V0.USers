class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :version, default: "0.0.0"
      t.timestamps
    end

   add_reference :ideas, :game, index: true 
  end
end
