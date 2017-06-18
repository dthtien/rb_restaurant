class Review < ApplicationRecord
  belongs_to :user
  belongs_to :star

  default_scope { order(created_at: :desc) }
end
