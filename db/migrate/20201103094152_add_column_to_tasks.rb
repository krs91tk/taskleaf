class AddColumnToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :deadline, :datetime, default: -> { 'CURRENT_TIMESTAMP' }, null: false, after: :description
    add_column :tasks, :priority, :integer, default: 1, null: false, after: :deadline
  end
end
