class AddNotif < ActiveRecord::Migration[5.0]
  def change
    create_table :notifs do |t|
      t.string :content
      t.string :redirection
      t.boolean :seen, default: false
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
