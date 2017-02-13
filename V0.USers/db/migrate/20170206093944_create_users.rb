class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.column :pseudo, :string #simplifié pour le moment, ajouter plus d'infos par la suite
      t.column :password, :string #voir comment sécuriser les mot de passe
      t.column :role, :string, :default => "User"

      t.timestamps
    end
  end
end
