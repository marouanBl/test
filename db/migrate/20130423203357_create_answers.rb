class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.boolean :featured
      t.integer :question_id
      t.integer :user_id

      t.timestamps
    end
  end
end
