class Task < ApplicationRecord
  validates :body, presence: true

  belongs_to :entry
  has_many :tag_tasks, dependent: :destroy
  has_many :tags, through: :tag_tasks
end
