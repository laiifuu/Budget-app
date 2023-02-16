class AddForeignKeysToTables < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :groups, :users, column: :user_id, on_delete: :cascade
    add_foreign_key :entities, :users, column: :author_id, on_delete: :cascade
    add_foreign_key :expenses, :groups, column: :group_id, on_delete: :cascade
    add_foreign_key :expenses, :entities, column: :entity_id, on_delete: :cascade
  end
end
