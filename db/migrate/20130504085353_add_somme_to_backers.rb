class AddSommeToBackers < ActiveRecord::Migration
  def change
    add_column :backers, :newsomme, :integer
  end
end
