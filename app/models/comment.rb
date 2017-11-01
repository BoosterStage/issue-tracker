class Comment < ApplicationRecord
  belongs_to :issue
  belongs_to :user

  validates :body, presence: true
  validates :user, presence: true

  scope :by_date, -> { order(created_at: :desc) }
end
