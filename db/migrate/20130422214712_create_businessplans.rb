class CreateBusinessplans < ActiveRecord::Migration
  def change
    create_table :businessplans do |t|
      t.text :wizard_question
      t.text :wizard_answer
      t.boolean :status
      t.integer :order
      t.integer :wizard_step_id

      t.timestamps
    end
  end
end
