class Expense < ApplicationRecord
  belongs_to :entity
  belongs_to :group
end
