class Comment < ApplicationRecord
  enum :status, [ :active, :archived ], prefix: :comments
end
