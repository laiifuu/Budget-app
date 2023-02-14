class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :expenses
  has_many :groups, through: :expenses

  validates :name, presence: true
  validates :amount, presence: true
  validates :author_id, presence: true
end
