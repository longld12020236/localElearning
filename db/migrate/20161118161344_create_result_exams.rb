class CreateResultExams < ActiveRecord::Migration[5.0]
  def change
    create_table :result_exams do |t|
      t.references :exam, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :user_answer_id
      t.integer :word_id

      t.timestamps
    end
  end
end
