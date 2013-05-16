class AddComplementToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :how_know, :text
    add_column :projects, :facebook_link, :string
    add_column :projects, :twitter_link, :string
    add_column :projects, :accepted, :boolean
    add_column :projects, :needs, :text
    add_column :projects, :rejected_for, :text
    add_column :projects, :featured, :boolean
  end
end
