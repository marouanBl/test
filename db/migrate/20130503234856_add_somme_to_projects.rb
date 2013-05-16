class AddSommeToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :somme, :integer
  end
end
