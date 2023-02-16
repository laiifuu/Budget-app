class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.bigint :group_id
      t.bigint :entity_id
      t.timestamps
    end
  end
end
