class ResultExam < ApplicationRecord
  belongs_to :user
  belongs_to :word
  belongs_to :exam
end
