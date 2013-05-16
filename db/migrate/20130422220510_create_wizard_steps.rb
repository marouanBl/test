class CreateWizardSteps < ActiveRecord::Migration
  def change
    create_table :wizard_steps do |t|
      t.string :name
      t.string :slug
      t.integer :order

      t.timestamps
    end

    add_index :wizard_steps, :slug, unique: true
  end
end
