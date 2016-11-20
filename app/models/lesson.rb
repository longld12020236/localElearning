class Lesson < ApplicationRecord
  belongs_to :category
  has_many :user_lessons, 	dependent: :destroy
  has_many :exams,	dependent: :destroy
end
