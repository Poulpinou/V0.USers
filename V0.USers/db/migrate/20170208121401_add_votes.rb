class AddVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.belongs_to :user, index: true
      t.belongs_to :idea, index: true
    end

    add_column :users, :available_votes, :integer, default: 3
  end
end
