class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :slug
      t.string :username
      t.text :biography
      t.string :website
      t.integer :birthday
      t.integer :birthmonth
      t.integer :birthyear
      t.text :address
      t.string :town
      t.integer :country_id, :default => ""
      t.integer :state_id, :default => ""
      t.integer :phone
      t.integer :cid
      t.boolean :is_coach

      t.timestamps
    end

    add_index :users, :slug, unique: true
  end
end
