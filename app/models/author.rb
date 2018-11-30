class Author < ApplicationRecord
  has_many :authorships, dependent: :destroy
  has_many :books, through: :authorships
  validates :name, presence: true, uniqueness: true
  validates :birth_year, presence: true, numericality: { only_integer: true }
end
