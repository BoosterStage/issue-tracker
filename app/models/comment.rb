class Comment < ApplicationRecord
  belongs_to :issue

  validates :body, presence: true

  scope :by_date, -> { order(created_at: :desc) }
end
