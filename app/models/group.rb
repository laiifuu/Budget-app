class Group < ApplicationRecord
  belongs_to :user
  has_many :expenses
  has_many :entities, through: :expenses

  validates :name, presence: true
  validates :icon, presence: true

  def total_amount
    entities = self.entities
    total = 0
    entities.each do |entity|
      total += entity.amount
    end
    total
  end
end
