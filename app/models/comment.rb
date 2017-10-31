class Comment < ApplicationRecord
  belongs_to :issue

  validates :body, presence: true

  default_scope { order(created_at: :desc)}
end
