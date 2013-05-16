class CreateBackers < ActiveRecord::Migration
  def change
    create_table :backers do |t|
      t.integer :project_id
      t.integer :user_id
      t.integer :value
      t.timestamp :confirmed_at
      t.boolean :finished

      t.timestamps
    end
  end
end
