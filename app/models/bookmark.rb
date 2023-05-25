class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :movie, presence: true, uniqueness: { scope: :list}
  validates :comment, length: { minimum: 6 }
end
