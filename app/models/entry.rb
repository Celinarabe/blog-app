class Entry < ApplicationRecord
  validates :author, presence: true
  validates :body, presence: true
  validates :date, presence: true, length: {is: 10}
end
