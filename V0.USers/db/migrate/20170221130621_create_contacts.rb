class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :sender
      t.string :object
      t.text :content
      t.string :state, default: :new
      t.string :aim, default: :contact
      t.timestamps
    end
  end
end
