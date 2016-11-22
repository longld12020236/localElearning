class Lesson < ApplicationRecord
  belongs_to :category
  has_many :exams
end
