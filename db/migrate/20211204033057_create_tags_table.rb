class CreateTagsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|
      t.string :body
      t.timestamps
    end

    create_table :tags_tasks do |t|
      t.belongs_to :task
      t.belongs_to :tag
    end
  end
end
