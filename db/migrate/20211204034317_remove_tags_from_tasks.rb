class RemoveTagsFromTasks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :tags, :string
  end
end
