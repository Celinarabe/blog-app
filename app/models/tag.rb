class Tag < ApplicationRecord
  validates :body, presence: true, length: { maximum: 25 }

  has_many :tag_tasks, dependent: :destroy
  has_many :tasks, through: :tag_tasks
end
