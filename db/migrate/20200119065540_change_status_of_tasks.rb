class ChangeStatusOfTasks < ActiveRecord::Migration[5.2]
  def up
    change_column :tasks, :status, :integer, default: 0
  end

  def down
    add_column :tasks, :status, :integer
  end
end
