class Word < ApplicationRecord
  belongs_to :category
  belongs_to :exam
  has_many :answers, dependent: :destroy
  has_many :exam_words, dependent: :destroy
end
