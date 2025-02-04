class Comment < ApplicationRecord
  validates :comments, presence: true
  validates :comments, format: { with: /\A[a-zA-Z0-9 ]*\z/, message: "only allows letters" }
end
