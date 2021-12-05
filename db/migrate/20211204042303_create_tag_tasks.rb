class CreateTagTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tag_tasks do |t|
      t.string :body
      t.belongs_to :task, null: false, foreign_key: true
      t.belongs_to :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
