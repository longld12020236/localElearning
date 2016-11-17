class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.integer :action_table_id
      t.string :action_type
      t.string :action_table_name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
