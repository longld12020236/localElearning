class CreateExamWords < ActiveRecord::Migration[5.0]
  def change
    create_table :exam_words do |t|
      t.references :exam, foreign_key: true
      t.references :word, foreign_key: true

      t.timestamps
    end
  end
end
