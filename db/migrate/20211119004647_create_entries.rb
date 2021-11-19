class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :author
      t.text :body
      t.string :date

      t.timestamps
    end
  end
end
