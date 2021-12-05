class ChangeTagsToString < ActiveRecord::Migration[6.1]
  change_table :tasks do |table|
    table.change :tags, :string
  end
end
