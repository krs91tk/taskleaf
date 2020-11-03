class ChangeTasksStatusColumnDefault < ActiveRecord::Migration[5.2]
  def up
    change_column :tasks, :status,:integer, default: 0, after: :priority
  end

  def down
    change_column :tasks, :status,:integer
  end
end
