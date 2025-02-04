class Comment < ApplicationRecord
  validates :comment, presence: true
  validates :comment, format: { with: /\A[a-zA-Z ]+\z/, message: "only allows letters" }
end
