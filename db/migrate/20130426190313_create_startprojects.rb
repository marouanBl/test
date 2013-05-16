class CreateStartprojects < ActiveRecord::Migration
  def change
    create_table :startprojects do |t|

      t.timestamps
    end
  end
end
