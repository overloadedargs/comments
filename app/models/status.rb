class Status < ApplicationRecord
  enum :project_status, [ :active, :archived ], prefix: :comments
end
