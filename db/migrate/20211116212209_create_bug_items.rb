class CreateBugItems < ActiveRecord::Migration[6.0]
  def change
    create_table :bug_items do |t|
      t.string :name
      t.string :description
      t.integer :priority

      t.timestamps
    end
  end
end
