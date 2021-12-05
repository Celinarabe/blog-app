class AddTagsToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :tags, :text, array: true
  end
end
