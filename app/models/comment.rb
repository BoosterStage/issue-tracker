class Comment < ApplicationRecord
  belongs_to :issue

  validates :body, presence: true
end
