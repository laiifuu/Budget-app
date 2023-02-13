json.extract! expense, :id, :group_id, :entity_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
