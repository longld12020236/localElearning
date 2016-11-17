class CreateResultExams < ActiveRecord::Migration[5.0]
  def change
    create_table :result_exams do |t|
      t.integer :user_answer_id
      t.references :user, foreign_key: true
      t.references :word, foreign_key: true
      t.references :exam, foreign_key: true

      t.timestamps
    end
  end
end
