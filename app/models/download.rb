class Download < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :tipo, presence: true
  validates :links, presence: true
end
