class Exam < ApplicationRecord
  belongs_to :lesson
  has_many :result_exams,	dependent: :destroy
  has_many :exam_word,		dependent: :destroy
end
