class Exam < ApplicationRecord
  belongs_to :lesson
  has_many :exam_words, dependent: :destroy
  has_many :result_exams, dependent: :destroy
end
