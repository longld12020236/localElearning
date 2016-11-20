class CreateExams < ActiveRecord::Migration[5.0]
  def change
    create_table :exams do |t|
      t.references :lesson, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
