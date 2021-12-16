class DropTagsTasksTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :tags_tasks
  end
end
