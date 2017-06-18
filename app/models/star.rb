class Star < ApplicationRecord
  has_many :reviews, dependent: :destroy
end