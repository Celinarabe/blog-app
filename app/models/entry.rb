class Entry < ApplicationRecord
  has_many :tasks, dependent: :destroy
  validates :author, presence: true
  validates :body, presence: true
  validates :date, presence: true, length: {is: 10}
  validates_associated :tasks
end
