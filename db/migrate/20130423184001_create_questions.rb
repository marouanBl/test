class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :subject
      t.text :question
      t.integer :category_id
      t.boolean :status
      t.boolean :is_solved
      t.boolean :featured
      t.integer :user_id
      t.string :slug

      t.timestamps
    end

    add_index :questions, :slug, unique: true
  end
end
